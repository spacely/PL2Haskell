
{-# LANGUAGE FlexibleContexts #-} 

module Main where

import Text.Parsec
import Text.Parsec.Expr
import Text.Parsec.Combinator
import qualified Text.ParserCombinators.Parsec.Token as Token
import Text.Parsec.String (Parser)
import Text.Parsec.Language (emptyDef)
import Text.ParserCombinators.Parsec.Language(haskellStyle, haskellDef, reservedNames, reservedOpNames)
import Data.Functor
import Data.Function (on)
import qualified Data.Map as Map
import Data.List --(intercalate, intersperse)
import Control.Applicative  hiding ((<|>))
import System.Environment
import Control.Monad


data AExpr
	= IntExpr Int
	| VarExpr String
	| SumExpr AExpr AExpr
	| SubExpr AExpr AExpr
	| MultExpr AExpr AExpr
	| NegExpr AExpr

data BExpr
	=BoolExp Bool          -- From While slides
    | EqExp AExpr AExpr
    | LtExp AExpr AExpr
    | NotExp BExpr
    | AndExp BExpr BExpr
    | OrExp BExpr BExpr

data Cmd
    = Skip 
    | List [Cmd]
    | AssignExp AExpr AExpr
    | AssignNegExp AExpr AExpr
    | SeqExp Cmd Cmd 
    | IfExp BExpr Cmd Cmd
    | WhileExp BExpr Cmd
