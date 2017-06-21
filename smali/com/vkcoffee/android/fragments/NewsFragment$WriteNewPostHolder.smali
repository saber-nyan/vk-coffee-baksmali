.class Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "NewsFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteNewPostHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final imageButton:Landroid/widget/ImageButton;

.field final imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    .line 1043
    const v0, 0x7f0300f5

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 1044
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->imageView:Landroid/widget/ImageView;

    .line 1045
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->imageButton:Landroid/widget/ImageButton;

    .line 1046
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->imageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020193

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x55514d

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1047
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->imageButton:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4600(Lcom/vkcoffee/android/fragments/NewsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->itemView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1051
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1037
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->bind(Ljava/lang/String;)V

    return-void
.end method

.method public bind(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 1055
    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1060
    return-void
.end method

.method synthetic lambda$new$503(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/PostPhotoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "uid"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 1069
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 1070
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1065
    return-void
.end method
