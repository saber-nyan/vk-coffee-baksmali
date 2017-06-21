.class Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.source "BirthdaysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$Holder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mSendGiftCallback:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onAction(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/util/Segmenter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
