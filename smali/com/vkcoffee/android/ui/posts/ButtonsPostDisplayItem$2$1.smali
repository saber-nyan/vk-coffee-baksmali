.class Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2$1;
.super Ljava/lang/Object;
.source "ButtonsPostDisplayItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2$1;->this$1:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;->this$0:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->access$000(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/data/Posts;->deletePost(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;)V

    .line 76
    return-void
.end method
