.class Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$1;
.super Ljava/lang/Object;
.source "ButtonsPostDisplayItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->access$000(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getById(I)Lcom/vkcoffee/android/api/Group;

    move-result-object v0

    .line 63
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    new-instance v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$1;->this$0:Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->access$000(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachGroup(Lcom/vkcoffee/android/api/Group;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 64
    return-void
.end method
