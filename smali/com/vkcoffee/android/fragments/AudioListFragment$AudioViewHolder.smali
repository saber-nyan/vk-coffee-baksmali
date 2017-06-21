.class Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "AudioListFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
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

.field private playPauseIcon:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private section:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 5
    .param p2, "section"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 293
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 294
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->artist:Landroid/widget/TextView;

    .line 286
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->duration:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    .line 289
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->title:Landroid/widget/TextView;

    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->cacheIcon:Landroid/widget/ImageView;

    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;

    invoke-direct {v1}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iput p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->section:I

    .line 303
    invoke-static {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->item:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPause(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method private playPause(Lcom/vkcoffee/android/AudioFile;)V
    .locals 8
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 377
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 379
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "action"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$17(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->section:I

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$18(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_3

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    sput-object v2, Lcom/vkcoffee/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    .line 388
    :goto_1
    const-string v5, "list_al"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    const-string v5, "position"

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->getAdapterPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->getAdapterPosition(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string v3, "referer"

    .line 391
    .local v3, "str":Ljava/lang/String;
    iget v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->section:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$9(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v5

    if-ltz v5, :cond_4

    const-string v4, "audios_user"

    .line 392
    .local v4, "str2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 399
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    :goto_3
    return-void

    .line 381
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$19(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 386
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_3
    move-object v0, v2

    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    goto :goto_1

    .line 391
    .restart local v3    # "str":Ljava/lang/String;
    :cond_4
    const-string v4, "audios_group"

    goto :goto_2

    :cond_5
    const-string v4, "search"

    goto :goto_2

    .line 396
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "action"

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/AudioFile;)V
    .locals 13
    .param p1, "item"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/4 v12, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "i":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->title:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->artist:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->duration:Landroid/widget/TextView;

    const-string v8, "%d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    div-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x1

    iget v11, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    rem-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    sget-object v7, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/vkcoffee/android/AudioFile;->equalsAdded(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 320
    :cond_0
    const/4 v5, 0x0

    .line 324
    .local v5, "isCurrent":Z
    :goto_0
    sget-object v7, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 325
    .local v4, "isCached":Z
    if-eqz v5, :cond_7

    sget-object v7, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v7}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 326
    const/4 v6, 0x1

    .line 330
    .local v6, "pt":Z
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$21(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 332
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 333
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v5, :cond_8

    .line 334
    const/4 v1, 0x0

    .line 338
    .local v1, "i2":I
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    .end local v1    # "i2":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 341
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 343
    :cond_2
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 344
    if-eqz v6, :cond_9

    .line 345
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    const v8, 0x7f0201ba

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :goto_3
    if-eqz v5, :cond_a

    .line 350
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 351
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v7, v8}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$22(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/widget/ProgressBar;)V

    .line 357
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->cacheIcon:Landroid/widget/ImageView;

    .line 358
    .local v3, "imageView2":Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 359
    :cond_4
    const/16 v0, 0x8

    .line 361
    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    return-void

    .line 322
    .end local v3    # "imageView2":Landroid/widget/ImageView;
    .end local v4    # "isCached":Z
    .end local v5    # "isCurrent":Z
    .end local v6    # "pt":Z
    :cond_6
    const/4 v5, 0x1

    .restart local v5    # "isCurrent":Z
    goto/16 :goto_0

    .line 328
    .restart local v4    # "isCached":Z
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "pt":Z
    goto :goto_1

    .line 336
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    :cond_8
    const/16 v1, 0x8

    .restart local v1    # "i2":I
    goto :goto_2

    .line 347
    .end local v1    # "i2":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_9
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPauseIcon:Landroid/widget/ImageView;

    const v8, 0x7f0201c5

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 353
    :cond_a
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 354
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->onBind(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 366
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "audio"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 369
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 370
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 374
    .end local v1    # "result":Landroid/content/Intent;
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->playPause(Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_0
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 403
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$20(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$23(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)Z

    move-result v1

    goto :goto_0
.end method
