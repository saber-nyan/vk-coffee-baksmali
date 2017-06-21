.class public Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
.super Landroid/app/DialogFragment;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;,
        Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;,
        Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

.field private animatingTransitionOut:Z

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private list:Lme/grishka/appkit/views/UsableRecyclerView;

.field private nowPlaying:Lcom/vkcoffee/android/AudioFile;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private swipeDismiss:Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    .line 64
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 431
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lcom/vkcoffee/android/AudioFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Lcom/vkcoffee/android/AudioFile;)Lcom/vkcoffee/android/AudioFile;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->animateStateTransition(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->update()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    return v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method private animateStateTransition(IZ)V
    .locals 10
    .param p1, "item"    # I
    .param p2, "in"    # Z

    .prologue
    .line 255
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v1

    .line 256
    .local v1, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v4, v1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 260
    .local v4, "v":Landroid/view/View;
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 261
    .local v2, "iconSize":I
    if-eqz p2, :cond_1

    .line 262
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const v5, 0x7f100173

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 268
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 269
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 271
    .end local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->animatingTransitionOut:Z

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .restart local v0    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const v5, 0x7f100173

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    neg-int v9, v2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    const v5, 0x7f100172

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 277
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 278
    new-instance v5, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;

    invoke-direct {v5, p0, v4}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$5;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 266
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private update()V
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylist(Ljava/util/List;)V

    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->notifyDataSetChanged()V

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 141
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->update()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v1, "com.vkcoffee.android.AUDIO_FILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v1, "com.vkcoffee.android.AUDIO_FILE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->nowPlaying:Lcom/vkcoffee/android/AudioFile;

    .line 125
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->setStyle(II)V

    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 145
    new-instance v4, Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 146
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v5, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V

    iput-object v5, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    invoke-virtual {v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 149
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->setClipToPadding(Z)V

    .line 150
    new-instance v4, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v5, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;

    invoke-direct {v5, p0, v11}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$DragController;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$1;)V

    invoke-direct {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 152
    sget-object v4, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 158
    new-instance v3, Landroid/support/v7/widget/Toolbar;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c009f

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 159
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    const v4, 0x7f080397

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 160
    const v4, 0x7f020144

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 161
    new-instance v4, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$2;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "content":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v9, [I

    const v6, 0x7f010168

    aput v6, v5, v7

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 170
    .local v2, "ta":Landroid/content/res/TypedArray;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, "sep":Landroid/view/View;
    const v4, -0x282727

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$3;

    invoke-direct {v5, p0, v3}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$3;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 197
    :cond_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 131
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 238
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 239
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 240
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->adapter:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 201
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 202
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 203
    .local v0, "dlg":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 204
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 205
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 206
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 207
    .local v4, "r":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 208
    const/16 v5, 0x11

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 209
    sget-boolean v5, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v5, :cond_1

    .line 210
    const/high16 v5, 0x43c40000    # 392.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 211
    const/high16 v5, 0x44280000    # 672.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 212
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-le v5, v6, :cond_0

    .line 213
    const/16 v5, 0x340

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/lit8 v6, v6, -0x20

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 214
    .local v2, "pw":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, 0x20

    .line 216
    .local v3, "px":I
    int-to-float v5, v3

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 218
    const/16 v5, 0x15

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 224
    .end local v2    # "pw":I
    .end local v3    # "px":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 225
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$4;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$4;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Landroid/view/Window$Callback;)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 234
    return-void

    .line 221
    :cond_1
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 222
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method
