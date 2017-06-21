.class final Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "ProfileGiftsFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/GiftItem;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/api/models/GiftItem;

.field private mDate:Landroid/widget/TextView;

.field private mFrom:Landroid/widget/TextView;

.field private mGift:Landroid/widget/ImageView;

.field private mOptions:Landroid/view/View;

.field private mPhoto:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    .line 267
    const v0, 0x7f0300bd

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 268
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mPhoto:Landroid/widget/ImageView;

    .line 269
    const v0, 0x7f10026f

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mOptions:Landroid/view/View;

    .line 270
    const v0, 0x7f100271

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mGift:Landroid/widget/ImageView;

    .line 271
    const v0, 0x7f100270

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mDate:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f10026e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mFrom:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mTitle:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mOptions:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/models/GiftItem;)V
    .locals 5
    .param p1, "data"    # Lcom/vkcoffee/android/api/models/GiftItem;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 280
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    .line 281
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mFrom:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->fullName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mDate:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/GiftItem;->dateStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/GiftItem;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/models/GiftItem;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget v0, v0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->mUserId:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/api/models/GiftItem;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->clearImage(I)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mOptions:Landroid/view/View;

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    iget-boolean v3, v3, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->can_see_gifts:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->mUserId:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v3, v4, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void

    .line 281
    :cond_4
    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 284
    goto :goto_1

    :cond_6
    move v0, v1

    .line 285
    goto :goto_2
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 256
    check-cast p1, Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->bind(Lcom/vkcoffee/android/api/models/GiftItem;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 346
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mGift:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->mLoadingPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->onClick(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0801f6

    const v5, 0x7f080119

    const/4 v4, 0x0

    .line 295
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->itemView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    iget v1, v1, Lcom/vkcoffee/android/api/models/GiftItem;->from_id:I

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    iget v2, v2, Lcom/vkcoffee/android/api/models/GiftItem;->from_id:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->openProfile(I)V

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mOptions:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 300
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 301
    .local v0, "menu":Landroid/widget/PopupMenu;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    iget-boolean v1, v1, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->can_see_gifts:Z

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    iget-object v3, v3, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;->first_name_gen:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v6, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget v1, v1, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->mUserId:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_2

    .line 305
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v4, v5, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 307
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 308
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 312
    .end local v0    # "menu":Landroid/widget/PopupMenu;
    :cond_3
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 324
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 318
    :sswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->showUsersGifts(Lcom/vkcoffee/android/api/models/GiftItem;)V

    goto :goto_0

    .line 321
    :sswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mData:Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->showGiftDeleteDialog(Lcom/vkcoffee/android/api/models/GiftItem;)V

    goto :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080119 -> :sswitch_1
        0x7f0801f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 329
    packed-switch p1, :pswitch_data_0

    .line 334
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$Holder;->mGift:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
