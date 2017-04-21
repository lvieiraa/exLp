import Data.List
import System.IO

convert :: Int -> String

units, teens, tens :: [String]
units = ["zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove"]
teens = ["dez","onze","doze","treze","quatorze","quinze","desezeis","dezessete","dezoito","dezenove"]
tens = ["vinte","trinta","quarenta","cinquenta","sessenta","setenta","oitenta","noventa"]
