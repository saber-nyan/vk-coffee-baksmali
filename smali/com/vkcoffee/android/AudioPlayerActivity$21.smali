.class Lcom/vkcoffee/android/AudioPlayerActivity$21;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->displayInfo(Lcom/vkcoffee/android/AudioFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

.field private final synthetic val$f:Lcom/vkcoffee/android/AudioFile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$21;)Lcom/vkcoffee/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iput-object v14, v13, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    .line 779
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$11(Lcom/vkcoffee/android/AudioPlayerActivity;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    sput-object v13, Lcom/vkcoffee/android/AudioPlayerActivity;->label:Ljava/lang/String;

    .line 781
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget v14, v14, Lcom/vkcoffee/android/AudioFile;->duration:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget v15, v15, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v13, v14, v15}, Lcom/vkcoffee/android/AudioInfoCoffee;->calculate(Ljava/lang/String;II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100189

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v14, v14, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100182

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v14, v14, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$12(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$13(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V

    .line 836
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100187

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const-string v14, "%d:%02d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->duration:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->duration:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100189

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setSelected(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100182

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setSelected(Z)V

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f100181

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    .line 840
    .local v8, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v8, :cond_1

    .line 841
    sget-object v13, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v8, v13}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 842
    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v9

    .line 843
    .local v9, "position":I
    if-gtz v9, :cond_a

    sget-object v13, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    .line 844
    .local v10, "realPos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$5(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v13

    if-nez v13, :cond_1

    sget-object v13, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v13

    if-eq v10, v13, :cond_1

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/vkcoffee/android/AudioPlayerActivity$21$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/vkcoffee/android/AudioPlayerActivity$21$2;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$21;Landroid/support/v4/view/ViewPager;)V

    .line 859
    const-wide/16 v16, 0x12c

    .line 845
    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    .end local v9    # "position":I
    .end local v10    # "realPos":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->updateCover(Z)V

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-virtual {v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->updateLyrics()V

    .line 864
    return-void

    .line 788
    .end local v8    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100189

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 789
    .local v3, "artist":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v14, 0x7f100182

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 790
    .local v12, "title":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 791
    .local v4, "curArtist":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 792
    .local v5, "curTitle":Ljava/lang/String;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const-string v14, "power"

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 795
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$14(Lcom/vkcoffee/android/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$15(Lcom/vkcoffee/android/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 797
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v14, v14, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$16(Lcom/vkcoffee/android/AudioPlayerActivity;Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v14, v14, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$17(Lcom/vkcoffee/android/AudioPlayerActivity;Ljava/lang/String;)V

    .line 799
    new-instance v6, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v12, v13}, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$21;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/vkcoffee/android/AudioFile;)V

    .line 812
    .local v6, "listener":Landroid/animation/AnimatorListenerAdapter;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 814
    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_0

    invoke-static {v3, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 815
    .local v7, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0xc8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 816
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 817
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 818
    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 819
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v7    # "oa":Landroid/animation/ObjectAnimator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 822
    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v14, v14, [F

    fill-array-data v14, :array_1

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 823
    .restart local v7    # "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v14, 0xc8

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 824
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 825
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->val$f:Lcom/vkcoffee/android/AudioFile;

    iget-object v13, v13, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 827
    invoke-virtual {v7, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 829
    :cond_7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    .end local v7    # "oa":Landroid/animation/ObjectAnimator;
    :cond_8
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 832
    .local v11, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 833
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 841
    .end local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "artist":Landroid/widget/TextView;
    .end local v4    # "curArtist":Ljava/lang/String;
    .end local v5    # "curTitle":Ljava/lang/String;
    .end local v6    # "listener":Landroid/animation/AnimatorListenerAdapter;
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    .end local v12    # "title":Landroid/widget/TextView;
    .restart local v8    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 843
    .restart local v9    # "position":I
    :cond_a
    sget-object v13, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v13}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v13

    if-le v9, v13, :cond_b

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v10, v9, -0x1

    goto/16 :goto_2

    .line 814
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 822
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
