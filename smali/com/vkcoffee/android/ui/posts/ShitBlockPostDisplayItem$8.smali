.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;
.super Ljava/lang/Object;
.source "ShitBlockPostDisplayItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->report(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

.field final synthetic val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Lcom/vkcoffee/android/attachments/ShitAttachment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    new-instance v0, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8$1;-><init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;Landroid/content/Context;)V

    .line 445
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$context:Landroid/content/Context;

    .line 451
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$8;->val$context:Landroid/content/Context;

    .line 452
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 453
    return-void
.end method
