class Queries {

  paymentVerification(id, subId) {
    return `SELECT *
            FROM Ces.Cashitem Ci
            where ci.acctid = ${id} and ci.acctsubid = ${subId} 
            order by ci.entrydate desc`;
  }

  policyStatusVerification(id, state) {
    return `SELECT versionstatus
            FROM nsa_${state}.polversion
            WHERE policyid = ${id}
            order by version desc`;
  }
}

export default new Queries();