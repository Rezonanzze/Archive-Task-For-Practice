//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ArchiveTask.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class IssuanceOfADocument
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }
        public int DocumentId { get; set; }
        public string DateOfIssue { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Document Document { get; set; }
    }
}
