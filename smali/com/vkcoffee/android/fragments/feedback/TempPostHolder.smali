.class Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "TempPostHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/Notification;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private entry:Lcom/vkcoffee/android/api/models/Notification;

.field private item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/models/Notification;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->entry:Lcom/vkcoffee/android/api/models/Notification;

    .line 34
    iget-object v0, p1, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 35
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->bind(Lcom/vkcoffee/android/api/models/Notification;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 45
    return-void
.end method

.method public getItem()Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "entry"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->entry:Lcom/vkcoffee/android/api/models/Notification;

    iget-object v2, v2, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    const-class v1, Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->itemView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/feedback/TempPostHolder;->bindingImages:Z

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V

    .line 40
    return-void
.end method
