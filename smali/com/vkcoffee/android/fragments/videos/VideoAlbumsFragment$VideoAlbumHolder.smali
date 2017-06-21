.class Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "VideoAlbumsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAlbumHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/VideoAlbum;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/api/VideoAlbum;

.field private final mInfo:Landroid/widget/TextView;

.field private final mLock:Landroid/view/View;

.field private final mOptions:Landroid/view/View;

.field private final mPhoto:Landroid/widget/ImageView;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .line 240
    const v0, 0x7f030195

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 241
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mTitle:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mSubtitle:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mInfo:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mPhoto:Landroid/widget/ImageView;

    .line 245
    const v0, 0x7f1003f4

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mLock:Landroid/view/View;

    .line 246
    const v0, 0x7f1003f5

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mOptions:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mOptions:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/VideoAlbum;)V
    .locals 9
    .param p1, "item"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 253
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mSubtitle:Landroid/widget/TextView;

    const v3, 0x7f080589

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Lcom/vkcoffee/android/api/VideoAlbum;->lastUpdated:I

    invoke-static {v5}, Lcom/vkcoffee/android/TimeUtils;->langDateDay(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0001

    iget v5, p1, Lcom/vkcoffee/android/api/VideoAlbum;->count:I

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p1, Lcom/vkcoffee/android/api/VideoAlbum;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mOptions:Landroid/view/View;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mCanEdit:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mLock:Landroid/view/View;

    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_1

    sget-object v0, Lcom/vkcoffee/android/data/PrivacySetting;->ALL:Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->apiValue()Ljava/util/List;

    move-result-object v4

    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;->apiValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v2, v1

    .line 258
    goto :goto_1
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->bind(Lcom/vkcoffee/android/api/VideoAlbum;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    return-void
.end method

.method synthetic lambda$onClick$309(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 300
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 288
    :sswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->editAlbum(Lcom/vkcoffee/android/api/VideoAlbum;)V

    goto :goto_0

    .line 292
    :sswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->showDeleteDialog(Lcom/vkcoffee/android/api/VideoAlbum;I)V

    goto :goto_0

    .line 296
    :sswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->copyLink(Lcom/vkcoffee/android/api/VideoAlbum;)V

    goto :goto_0

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10000e -> :sswitch_2
        0x7f100446 -> :sswitch_1
        0x7f10044a -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 275
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->itemView:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->openAlbum(Lcom/vkcoffee/android/api/VideoAlbum;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mOptions:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 278
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 279
    .local v0, "pm":Landroid/support/v7/widget/PopupMenu;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mData:Lcom/vkcoffee/android/api/VideoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 280
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f10044a

    const v3, 0x7f08013d

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 281
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f100446

    const v3, 0x7f080119

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 283
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f10000e

    const v3, 0x7f080101

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 285
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;)Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 302
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    return-void
.end method
