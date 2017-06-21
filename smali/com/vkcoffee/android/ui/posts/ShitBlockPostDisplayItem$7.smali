.class Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ShitBlockPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->hide(Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
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
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;->this$0:Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem$7;->val$a:Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;->access$400(Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;Landroid/content/Context;Lcom/vkcoffee/android/attachments/ShitAttachment;)V

    .line 433
    return-void
.end method
