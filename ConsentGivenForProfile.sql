-- Imported from FetchXML Builder

SELECT   max(cra_securityscreenings.cra_consent_given_date) AS given_date,
         cra_consent.cra_verification AS verification,
         cra_consent.cra_verificationname as verificationname
FROM     cra_securityscreenings
         INNER JOIN
         cra_consent AS cra_consent
         ON cra_securityscreenings.cra_securityscreeningsid = cra_consent.cra_security_screening_case
WHERE    cra_securityscreenings.cra_security_profile = '0685608e-ca76-eb11-a829-000d3a84e9e0'
         AND cra_consent.cra_consent_given_status = 171100001
GROUP BY cra_consent.cra_verification, cra_consent.cra_verificationname
ORDER BY given_date ASC;

