.class Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "GraffitiFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/fragment/GraffitiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraffitiHolder"
.end annotation


# instance fields
.field private document:Lcom/vkcoffee/android/api/Document;

.field final synthetic this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    .line 265
    new-instance v1, Lcom/vk/attachpicker/widget/SquareImageView;

    invoke-direct {v1, p2}, Lcom/vk/attachpicker/widget/SquareImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 266
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    .line 268
    .local v0, "p":I
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/Document;)V
    .locals 5
    .param p1, "document"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->document:Lcom/vkcoffee/android/api/Document;

    .line 273
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 275
    .local v1, "limit":F
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 276
    .local v2, "req":Lcom/squareup/picasso/RequestCreator;
    iget v3, p1, Lcom/vkcoffee/android/api/Document;->width:I

    iget v4, p1, Lcom/vkcoffee/android/api/Document;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v0, v1, v3

    .line 277
    .local v0, "downscale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 278
    iget v3, p1, Lcom/vkcoffee/android/api/Document;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p1, Lcom/vkcoffee/android/api/Document;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 281
    return-void
.end method

.method synthetic lambda$onLongClick$55(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 309
    if-nez p4, :cond_0

    .line 310
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesHideRecentGraffiti;

    iget v1, p1, Lcom/vkcoffee/android/api/Document;->did:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesHideRecentGraffiti;-><init>(I)V

    new-instance v1, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$1;-><init>(Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)V

    .line 311
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesHideRecentGraffiti;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 332
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-virtual {v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->document:Lcom/vkcoffee/android/api/Document;

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Lcom/vk/attachpicker/GraffitiConfirmDialog;

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->document:Lcom/vkcoffee/android/api/Document;

    invoke-direct {v1, v0, v2}, Lcom/vk/attachpicker/GraffitiConfirmDialog;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/api/Document;)V

    invoke-virtual {v1}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->show()V

    goto :goto_0
.end method

.method public onLongClick()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-virtual {v5}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 298
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v3

    .line 302
    :cond_1
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->document:Lcom/vkcoffee/android/api/Document;

    if-eqz v5, :cond_0

    .line 303
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->document:Lcom/vkcoffee/android/api/Document;

    .line 305
    .local v2, "clickDoc":Lcom/vkcoffee/android/api/Document;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-array v5, v4, [Ljava/lang/String;

    const v6, 0x7f080119

    .line 307
    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p0, v2, v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 306
    invoke-virtual {v1, v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move v3, v4

    .line 335
    goto :goto_0
.end method
