-- Find drafts which contains the word 'optimism'


SELECT *
FROM google_file_store
WHERE LOWER(contents) LIKE '%optimism%'
  AND filename LIKE '%draft%';