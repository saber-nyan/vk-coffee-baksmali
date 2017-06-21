.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "AudioPlaylistFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;"
    }
.end annotation


# instance fields
.field private artist:Landroid/widget/TextView;

.field private cacheIcon:Landroid/widget/ImageView;

.field private duration:Landroid/widget/TextView;

.field private playIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    .line 386
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .line 387
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$700(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 388
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->title:Landroid/widget/TextView;

    .line 389
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->artist:Landroid/widget/TextView;

    .line 390
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->duration:Landroid/widget/TextView;

    .line 391
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 392
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->cacheIcon:Landroid/widget/ImageView;

    .line 393
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;

    invoke-direct {v1}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;-><init>()V

    const v2, -0x393634

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;->setColor(I)Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 395
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/AudioFile;)V
    .locals 10
    .param p1, "item"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 399
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->artist:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->duration:Landroid/widget/TextView;

    const-string/jumbo v7, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/vkcoffee/android/AudioFile;->equalsAdded(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v1, v3

    .line 403
    .local v1, "isCurrent":Z
    :goto_0
    sget-object v6, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 404
    .local v0, "isCached":Z
    if-eqz v1, :cond_3

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    .line 405
    .local v2, "pt":Z
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$500(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 410
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->cacheIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    return-void

    .end local v0    # "isCached":Z
    .end local v1    # "isCurrent":Z
    .end local v2    # "pt":Z
    :cond_2
    move v1, v4

    .line 402
    goto :goto_0

    .restart local v0    # "isCached":Z
    .restart local v1    # "isCurrent":Z
    :cond_3
    move v2, v4

    .line 404
    goto :goto_1

    .restart local v2    # "pt":Z
    :cond_4
    move v3, v5

    .line 406
    goto :goto_2

    :cond_5
    move v4, v5

    .line 410
    goto :goto_3
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->onBind(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 415
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v0

    .line 417
    .local v0, "cp":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 418
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    .line 423
    .end local v0    # "cp":I
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local v0    # "cp":I
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService;->jumpToTrack(I)V

    goto :goto_0
.end method

.method public onLongClick()Z
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method
