--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
import           Text.Pandoc
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------  

mathjaxExtensions :: Extensions
mathjaxExtensions = extensionsFromList 
                    [Ext_tex_math_dollars --  $...$ or $$...$$
                    ,Ext_tex_math_double_backslash --  \(...\) or \[...\]
                    ,Ext_latex_macros
                    ,Ext_inline_code_attributes 
                    ]
                    
readMathjaxOptions :: ReaderOptions 
readMathjaxOptions = defaultHakyllReaderOptions
                {
                    readerExtensions = (readerExtensions defaultHakyllReaderOptions) <> mathjaxExtensions
                }
                
writeMathjaxOptions :: WriterOptions
writeMathjaxOptions = defaultHakyllWriterOptions 
                {
                    writerHTMLMathMethod = MathJax ""
                }
                
myCompiler :: Compiler (Item String)
myCompiler = do
  csl <- load "bib/chicago-author-date.csl"
  bib <- load "bib/teaching.bib"
  getResourceBody >>=
    readPandocBiblio readMathjaxOptions csl bib >>=
    pure . (writePandocWith writeMathjaxOptions)


-- myCompiler :: Compiler (Item String)
-- myCompiler = pandocCompilerWith readMathjaxOptions writeMathjaxOptions



main :: IO ()
main = hakyllWith config $ do
    match "course-assets/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "bib/chicago-author-date.csl" $ compile cslCompiler
    match "bib/teaching.bib"    $ compile biblioCompiler

    match (fromList ["about.md"]) $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls


    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "course-pages/*md" $ do
        route $ setExtension "html"
        compile $ myCompiler
            >>= loadAndApplyTemplate "templates/page.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls


    match "course-posts/*" $ do
        route $ setExtension "html"
        compile $ myCompiler
            >>= loadAndApplyTemplate "templates/post.html"    postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    create ["archive.html"] $ do
        route idRoute
        compile $ do
            posts <- recentFirst =<< loadAll "course-posts/*"
            let archiveCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    constField "title" "Post archives"            `mappend`
                    defaultContext

            makeItem ""
                >>= loadAndApplyTemplate "templates/archive.html" archiveCtx
                >>= loadAndApplyTemplate "templates/default.html" archiveCtx
                >>= relativizeUrls



    match "index.html" $ do
        route idRoute
        compile $ do
            posts <- fmap (take 10) $ recentFirst =<< loadAll "course-posts/*"

            
            let indexCtx =
                    listField "posts" postCtx (return posts) `mappend`
                    defaultContext

            getResourceBody
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

--------------------------------------------------------------------------------
postCtx :: Context String
postCtx =
    -- dateField "date" "%B %e, %Y" `mappend`
    dateField "date" "%Y-%m-%d" `mappend`
    defaultContext


-- postCtxWithTags :: Tags -> Context String
-- postCtxWithTags tags = tagsField "tags" tags `mappend` postCtx


config :: Configuration
config = defaultConfiguration
  { destinationDirectory = "/home/george/Classes/2024-Sp-Math190/docs"
  , providerDirectory    = "/home/george/Classes/2024-Sp-Math190"
  , storeDirectory       = "/home/george/Classes/2024-Sp-Math190/_cache"
  , tmpDirectory         = "/home/george/Classes/2024-Sp-Math190/_cache/tmp"  
  , previewPort          = 9090
  , deployCommand        = "bash /home/george/Classes/2024-Sp-Math190/deploy.sh"
  }
