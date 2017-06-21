.class Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFeedViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private duration:Landroid/widget/TextView;

.field private image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 4

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1292
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03015a

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;I)V

    .line 1287
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->duration:Landroid/widget/TextView;

    .line 1288
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->image:Landroid/widget/ImageView;

    .line 1289
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->title:Landroid/widget/TextView;

    .line 1293
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    const/high16 v3, 0x43180000    # 152.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->image:Landroid/widget/ImageView;

    const v1, 0x7f0202cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1310
    return-void
.end method

.method public onBind(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 8
    .param p1, "item"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1298
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->duration:Landroid/widget/TextView;

    .line 1300
    .local v1, "textView":Landroid/widget/TextView;
    iget v2, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    const/16 v3, 0xe10

    if-le v2, v3, :cond_0

    .line 1301
    const-string v2, "%d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit16 v4, v4, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "format":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    return-void

    .line 1303
    .end local v0    # "format":Ljava/lang/CharSequence;
    :cond_0
    const-string v2, "%d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "format":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->onBind(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 1317
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VideoFile;->convertToPost()Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    .line 1318
    .local v1, "e":Lcom/vkcoffee/android/NewsEntry;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1319
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "entry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1320
    const-string v2, "referer"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const-class v2, Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1322
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$VideoFeedViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    const/16 v3, 0xf

    invoke-direct {v1, p2, v2, v3}, Lcom/vkcoffee/android/ui/RoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    return-void
.end method
