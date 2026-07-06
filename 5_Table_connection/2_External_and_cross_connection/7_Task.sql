SELECT *
FROM Suits s, Ranks r
ORDER BY CASE WHEN s.suit = 'Spades' THEN 1
              WHEN s.suit = 'Clubs' THEN 2
              WHEN s.suit = 'Diamonds' THEN 3
              WHEN s.suit = 'Hearts' THEN 4 END,
              
          CASE WHEN r.rankvalue = '2' THEN 1
               WHEN r.rankvalue = '3' THEN 2
               WHEN r.rankvalue = '4' THEN 3
               WHEN r.rankvalue = '5' THEN 4
               WHEN r.rankvalue = '6' THEN 5
               WHEN r.rankvalue = '7' THEN 6
               WHEN r.rankvalue = '8' THEN 7
               WHEN r.rankvalue = '9' THEN 8
               WHEN r.rankvalue = '10' THEN 9
               WHEN r.rankvalue = 'Jack' THEN 10
               WHEN r.rankvalue = 'Queen' THEN 11
               WHEN r.rankvalue = 'King' THEN 12
               WHEN r.rankvalue = 'Ace' THEN 13 END