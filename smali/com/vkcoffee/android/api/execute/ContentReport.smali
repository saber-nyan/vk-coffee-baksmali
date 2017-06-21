.class public Lcom/vkcoffee/android/api/execute/ContentReport;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "ContentReport.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1
    .param p1, "ownerID"    # I
    .param p2, "itemID"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "reason"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "execute.reportContent"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/execute/ContentReport;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "item_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/execute/ContentReport;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/execute/ContentReport;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "reason"

    invoke-virtual {p0, v0, p4}, Lcom/vkcoffee/android/api/execute/ContentReport;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    return-void
.end method
