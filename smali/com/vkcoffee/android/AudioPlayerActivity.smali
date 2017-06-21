.class public Lcom/vkcoffee/android/AudioPlayerActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AudioPlayerActivity$CoverInfoHolder;,
        Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;,
        Lcom/vkcoffee/android/AudioPlayerActivity$NoPaddingTransitionDrawable;
    }
.end annotation


# static fields
.field public static act:Lcom/vkcoffee/android/AudioPlayerActivity;

.field static label:Ljava/lang/String;

.field private static pauseIcon:Landroid/graphics/drawable/Drawable;

.field private static playIcon:Landroid/graphics/drawable/Drawable;


# instance fields
.field private COLOR_PLACEHOLDER:I

.field addBtn:Landroid/widget/ImageView;

.field private addRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

.field anchor:Landroid/view/View;

.field private animArtist:Ljava/lang/String;

.field private animTitle:Ljava/lang/String;

.field private aview:Landroid/view/View;

.field canUpdateProgress:Z

.field private coverAid:I

.field private coverBg:Landroid/view/View;

.field private coverOid:I

.field private coverViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field file:Lcom/vkcoffee/android/AudioFile;

.field private firstInfoUpdate:Z

.field public isRegistered:Z

.field private lastPlaylistLength:I

.field private placeholder:Landroid/graphics/drawable/Drawable;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private viewPagerScrollState:I

.field wasTouching:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 82
    const v0, -0xc7baac

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->COLOR_PLACEHOLDER:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->addRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->animArtist:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->animTitle:Ljava/lang/String;

    .line 88
    iput-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->canUpdateProgress:Z

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverViews:Landroid/util/SparseArray;

    .line 94
    iput-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->firstInfoUpdate:Z

    .line 95
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->isRegistered:Z

    .line 96
    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->lastPlaylistLength:I

    .line 98
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/AudioPlayerActivity;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->lastPlaylistLength:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;Z)V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/AudioPlayerActivity;->deleteFile(Lcom/vkcoffee/android/AudioFile;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/AudioPlayerActivity;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->firstInfoUpdate:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->updateAddButton()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->firstInfoUpdate:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkcoffee/android/AudioPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->animArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/AudioPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->animTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkcoffee/android/AudioPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->animArtist:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/vkcoffee/android/AudioPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->animTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/AudioPlayerActivity;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->lastPlaylistLength:I

    return v0
.end method

.method static synthetic access$20(Lcom/vkcoffee/android/AudioPlayerActivity;)Z
    .locals 1

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->usePager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->updateCoverImage()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkcoffee/android/AudioPlayerActivity;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->COLOR_PLACEHOLDER:I

    return v0
.end method

.method static synthetic access$24()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerActivity;->pauseIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$25()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerActivity;->playIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->placeholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/AudioPlayerActivity;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->viewPagerScrollState:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->showBroadcastDialog()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->addCurrent()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/AudioPlayerActivity;I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->viewPagerScrollState:I

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/api/VKAPIRequest;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->addRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-void
.end method

.method private addCurrent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 670
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->addRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-nez v1, :cond_0

    .line 671
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 672
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    iget v1, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 673
    invoke-direct {p0, v0, v4}, Lcom/vkcoffee/android/AudioPlayerActivity;->deleteFile(Lcom/vkcoffee/android/AudioFile;Z)V

    .line 695
    .end local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    :goto_0
    return-void

    .line 674
    .restart local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    if-eqz v0, :cond_0

    .line 675
    new-instance v1, Lcom/vkcoffee/android/api/audio/AudioAdd;

    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v3, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/api/audio/AudioAdd;-><init>(III)V

    new-instance v2, Lcom/vkcoffee/android/AudioPlayerActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity$18;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/audio/AudioAdd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 692
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 675
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->addRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method private confirmAndDelete()V
    .locals 4

    .prologue
    .line 698
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_0

    .line 699
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 700
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v0, :cond_0

    .line 701
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08011d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805c0

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$19;

    invoke-direct {v3, p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity$19;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 705
    const v2, 0x7f0802d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 708
    .end local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    return-void
.end method

.method private deleteFile(Lcom/vkcoffee/android/AudioFile;Z)V
    .locals 3
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;
    .param p2, "updateCover"    # Z

    .prologue
    .line 711
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioDelete;

    iget v1, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v2, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/audio/AudioDelete;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$20;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/vkcoffee/android/AudioPlayerActivity$20;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Landroid/content/Context;Lcom/vkcoffee/android/AudioFile;Z)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 727
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 728
    return-void
.end method

.method private doUpdateCover(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 931
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    const/4 v4, 0x2

    new-instance v5, Lcom/vkcoffee/android/AudioPlayerActivity$24;

    invoke-direct {v5, p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$24;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIIIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 995
    return-void
.end method

.method private getCurrentCoverScroller()Landroid/view/View;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v1, 0x7f100181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-nez v0, :cond_1

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v1, 0x7f100194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverViews:Landroid/util/SparseArray;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private searchArtist()V
    .locals 4

    .prologue
    .line 731
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 732
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    .line 733
    .local v1, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v1, :cond_0

    .line 734
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "search"

    iget-object v3, v1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 736
    const-class v2, Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v2, v0, p0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 739
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    return-void
.end method

.method private showBroadcastDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 875
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v2, "grps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getAdminedGroups(Ljava/util/ArrayList;)V

    .line 877
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v6, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v4, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v8, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v8}, Lcom/vkcoffee/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v7

    .line 880
    .local v7, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0802b9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 882
    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 885
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Z

    .line 886
    .local v0, "checked":[Z
    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v0, v10

    .line 887
    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    const/4 v3, 0x1

    .line 889
    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 890
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 896
    new-instance v8, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f08008a

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-array v8, v10, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/vkcoffee/android/AudioPlayerActivity$22;

    invoke-direct {v10, p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity$22;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;[Z)V

    invoke-virtual {v9, v8, v0, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 900
    const v9, 0x7f08031e

    new-instance v10, Lcom/vkcoffee/android/AudioPlayerActivity$23;

    invoke-direct {v10, p0, v0, v4}, Lcom/vkcoffee/android/AudioPlayerActivity$23;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;[ZLjava/util/ArrayList;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 913
    const v9, 0x7f0800b7

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 914
    return-void

    .line 883
    .end local v0    # "checked":[Z
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/api/Group;

    iget-object v8, v8, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 891
    .restart local v0    # "checked":[Z
    .restart local v3    # "i":I
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/Group;

    .line 892
    .local v1, "g":Lcom/vkcoffee/android/api/Group;
    iget v8, v1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    aput-boolean v8, v0, v3

    .line 893
    iget v8, v1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private toggleCachedState()V
    .locals 4

    .prologue
    .line 650
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_0

    .line 651
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 652
    .local v0, "audioPlayerService":Lcom/vkcoffee/android/AudioPlayerService;
    invoke-static {}, Lcom/vkcoffee/android/AudioPlayerService;->isEnoughSpaceToCache()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    .line 654
    .local v1, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v1, :cond_0

    .line 655
    iget v2, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v3, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 656
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent()V

    .line 660
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    .line 667
    .end local v0    # "audioPlayerService":Lcom/vkcoffee/android/AudioPlayerService;
    .end local v1    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    :goto_1
    return-void

    .line 658
    .restart local v0    # "audioPlayerService":Lcom/vkcoffee/android/AudioPlayerService;
    .restart local v1    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->saveCurrent()V

    goto :goto_0

    .line 665
    .end local v1    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_2
    const v2, 0x7f0802fa

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private updateAddButton()V
    .locals 9

    .prologue
    const v5, 0x7f10018b

    const v8, 0x7f0f00b9

    const/4 v7, 0x1

    .line 618
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v3, :cond_0

    .line 619
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    .line 620
    .local v1, "f":Lcom/vkcoffee/android/AudioFile;
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 621
    .local v0, "btn":Landroid/widget/ImageView;
    iget v3, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v3, v4, :cond_2

    .line 623
    iget v3, v1, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    if-eqz v3, :cond_1

    .line 624
    const/4 v2, 0x1

    .line 628
    .local v2, "z":Z
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 629
    new-instance v3, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 637
    .end local v0    # "btn":Landroid/widget/ImageView;
    .end local v1    # "f":Lcom/vkcoffee/android/AudioFile;
    .end local v2    # "z":Z
    :cond_0
    :goto_1
    return-void

    .line 626
    .restart local v0    # "btn":Landroid/widget/ImageView;
    .restart local v1    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "z":Z
    goto :goto_0

    .line 633
    .end local v2    # "z":Z
    :cond_2
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 635
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1
.end method

.method private updateCoverImage()V
    .locals 4

    .prologue
    .line 998
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    const/4 v2, 0x0

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$25;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$25;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1032
    return-void
.end method

.method public static updateLabelForBitRate(Ljava/lang/String;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 772
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerActivity;->act:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v1, 0x7f100189

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerActivity;->label:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkcoffee/android/AudioPlayerActivity;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    return-void
.end method

.method private usePager()Z
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v1, 0x7f100181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public displayInfo(Lcom/vkcoffee/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 776
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$21;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 866
    return-void
.end method

.method public enableBroadcast(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1086
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$28;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$28;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1091
    return-void
.end method

.method public enableControlButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1094
    const v0, 0x7f10018d

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1095
    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1096
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1097
    return-void
.end method

.method public forceUpdateCover()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 869
    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverOid:I

    .line 870
    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverAid:I

    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->updateCover(Z)V

    .line 872
    return-void
.end method

.method public haveLyrics()Z
    .locals 2

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    .line 1072
    .local v0, "cur":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1073
    const/4 v1, 0x0

    .line 1075
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f100194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 640
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->invalidateOptionsMenu()V

    .line 641
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->updateAddButton()V

    .line 642
    return-void
.end method

.method public invalidatePager()V
    .locals 3

    .prologue
    .line 760
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v2, 0x7f100181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 761
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 764
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f100189

    const v12, 0x7f0f00b9

    const v11, 0x7f100182

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    sput-object p0, Lcom/vkcoffee/android/AudioPlayerActivity;->act:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 202
    const v5, 0x7f08030e

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->setTitle(I)V

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v5, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v5, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v9, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v0, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    iput v6, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->viewPagerScrollState:I

    .line 209
    const v5, 0x7f03004e

    const/4 v8, 0x0

    invoke-static {p0, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    .line 210
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v5, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const v9, -0xb2a495

    invoke-direct {v5, v8, v9}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 213
    sget-boolean v5, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v5, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f1000dd

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 215
    .local v3, "textView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-le v5, v8, :cond_8

    .line 219
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x340

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int/lit8 v9, v9, -0x20

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    const/high16 v9, 0x43b40000    # 360.0f

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/view/Window;->setLayout(II)V

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/view/Window;->setGravity(I)V

    .line 224
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$2;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$2;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 230
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setClipToOutline(Z)V

    .line 233
    .end local v3    # "textView":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 234
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v5, v8, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x400

    invoke-virtual {v5, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 236
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_9

    .line 237
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v8, -0x80000000

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 238
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v8, 0x44000000    # 512.0f

    invoke-virtual {v5, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 243
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v8, 0x7f100180

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverBg:Landroid/view/View;

    .line 244
    const v5, 0x7f10018d

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$3;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v5, 0x7f10018e

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$4;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$4;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v5, 0x7f10018c

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$5;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v5, 0x7f100185

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$6;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 283
    invoke-virtual {p0, v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v5, :cond_3

    .line 286
    const v5, 0x7f100192

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v8, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v8}, Lcom/vkcoffee/android/AudioPlayerService;->isLoop()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 287
    const v5, 0x7f100191

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v8, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v8}, Lcom/vkcoffee/android/AudioPlayerService;->isRandom()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 289
    :cond_3
    const v5, 0x7f100192

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$7;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$7;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v5, 0x7f100191

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$8;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$8;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v5, 0x7f100190

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$9;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$9;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const v5, 0x7f10018f

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$10;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$10;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v5, 0x7f100193

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$11;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$11;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v5, 0x7f100183

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$12;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$12;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v5, 0x7f10018b

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/vkcoffee/android/AudioPlayerActivity$13;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$13;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v5, 0x7f100190

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v8, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02020c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    const v5, 0x7f100191

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v8, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02020f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    const v5, 0x7f100192

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v8, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0201fc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerActivity;->playIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    .line 367
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0201c4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/vkcoffee/android/AudioPlayerActivity;->playIcon:Landroid/graphics/drawable/Drawable;

    .line 368
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0201b9

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/vkcoffee/android/AudioPlayerActivity;->pauseIcon:Landroid/graphics/drawable/Drawable;

    .line 370
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v8, "/system/app/SecLauncher2.apk"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/io/File;

    const-string v8, "/system/app/SecLauncher3.apk"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v6

    .line 371
    .local v1, "isTouchWiz":Z
    :goto_2
    if-eqz v1, :cond_b

    .line 372
    invoke-virtual {p0, v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v8, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v8}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 373
    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v8, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v8}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 378
    :goto_3
    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 379
    .local v4, "titleView":Landroid/widget/TextView;
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v5, :cond_5

    .line 380
    const v5, 0x7f100190

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v8, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v8}, Lcom/vkcoffee/android/AudioPlayerService;->isBroadcast()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 382
    :cond_5
    iput v6, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverOid:I

    .line 383
    iput v6, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverAid:I

    .line 384
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v8, 0x7f100181

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 385
    .local v2, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v2, :cond_7

    .line 386
    new-instance v5, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;)V

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 387
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v5, :cond_6

    .line 388
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistPosition()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 390
    :cond_6
    new-instance v5, Lcom/vkcoffee/android/AudioPlayerActivity$14;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/AudioPlayerActivity$14;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 446
    new-instance v5, Lcom/vkcoffee/android/ui/DepthPageTransformer;

    invoke-direct {v5}, Lcom/vkcoffee/android/ui/DepthPageTransformer;-><init>()V

    invoke-virtual {v2, v7, v5}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 448
    :cond_7
    return-void

    .line 221
    .end local v1    # "isTouchWiz":Z
    .end local v2    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v4    # "titleView":Landroid/widget/TextView;
    .restart local v3    # "textView":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    const/16 v9, 0x258

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int/lit8 v10, v10, -0x20

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_0

    .line 240
    .end local v3    # "textView":Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v8, 0x4000000

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_1

    :cond_a
    move v1, v7

    .line 370
    goto/16 :goto_2

    .line 375
    .restart local v1    # "isTouchWiz":Z
    :cond_b
    invoke-virtual {p0, v13}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    .line 376
    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/VKActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 451
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onDestroy()V

    .line 453
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->finish()V

    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 581
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 614
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 583
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->isTaskRoot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    new-instance v3, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v4, Lcom/vkcoffee/android/fragments/AudioListFragment;

    const-class v5, Lcom/vkcoffee/android/MainActivity;

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v3, p0}, Lcom/vkcoffee/android/navigation/Navigator;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 585
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 587
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->finish()V

    goto :goto_0

    .line 592
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->toggleCachedState()V

    goto :goto_0

    .line 595
    :sswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->showLyrics()V

    goto :goto_0

    .line 598
    :sswitch_3
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->confirmAndDelete()V

    goto :goto_0

    .line 601
    :sswitch_4
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->searchArtist()V

    goto :goto_0

    .line 604
    :sswitch_5
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 605
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 606
    iget-object v3, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v4, Lcom/vkcoffee/android/attachments/AudioAttachment;

    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/attachments/AudioAttachment;-><init>(Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    const/4 v3, -0x1

    iput v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "post"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    const-string v3, "msg"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 581
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100438 -> :sswitch_1
        0x7f100439 -> :sswitch_2
        0x7f10043a -> :sswitch_3
        0x7f10043b -> :sswitch_4
        0x7f10043c -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onPause()V

    .line 470
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 471
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_1

    .line 472
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->viewPagerScrollState:I

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->setVolume(F)V

    .line 475
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/AudioPlayerService;->unregisterPlayerView(Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;)V

    .line 477
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v12, 0x7f10021d

    const v11, 0x7f10008f

    const v10, 0x7f10008e

    const/4 v9, 0x1

    const v8, 0x7f100438

    .line 485
    const/4 v4, 0x0

    .line 486
    .local v4, "z":Z
    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v6, :cond_3

    .line 487
    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    .line 488
    .local v1, "f":Lcom/vkcoffee/android/AudioFile;
    if-eqz v1, :cond_3

    .line 489
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v7, "\u0421\u043a\u0430\u0447\u0430\u0442\u044c \u0430\u0443\u0434\u0438\u043e\u0437\u0430\u043f\u0438\u0441\u044c"

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 490
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 491
    new-instance v7, Lcom/vkcoffee/android/AudioPlayerActivity$15;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$15;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 530
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v7, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u043f\u043e\u0445\u043e\u0436\u0438\u0435"

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 531
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/AudioPlayerActivity$16;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$16;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 540
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v7, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u0435"

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 541
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v7, Lcom/vkcoffee/android/AudioPlayerActivity$17;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$17;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 550
    iget v6, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v7, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v6, v7}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v1, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    iget v7, v1, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    invoke-static {v6, v7}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 551
    :cond_0
    const/4 v0, 0x1

    .line 555
    .local v0, "cached":Z
    :goto_0
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v0, :cond_5

    const v6, 0x7f020122

    :goto_1
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 556
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 557
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 558
    .local v2, "findItem":Landroid/view/MenuItem;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "enableAudioCache"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v0, :cond_6

    .line 559
    :cond_1
    const/4 v5, 0x1

    .line 563
    .local v5, "z2":Z
    :goto_2
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 564
    iget v6, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v6, v7, :cond_7

    .line 565
    const v6, 0x7f10043a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 566
    .local v3, "findItem2":Landroid/view/MenuItem;
    iget-boolean v6, v1, Lcom/vkcoffee/android/AudioFile;->fromAttachment:Z

    if-nez v6, :cond_2

    .line 567
    const/4 v4, 0x1

    .line 569
    :cond_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 573
    .end local v3    # "findItem2":Landroid/view/MenuItem;
    :goto_3
    const v6, 0x7f100439

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->haveLyrics()Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 576
    .end local v0    # "cached":Z
    .end local v1    # "f":Lcom/vkcoffee/android/AudioFile;
    .end local v2    # "findItem":Landroid/view/MenuItem;
    .end local v5    # "z2":Z
    :cond_3
    return v9

    .line 553
    .restart local v1    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "cached":Z
    goto :goto_0

    .line 555
    :cond_5
    const v6, 0x7f020123

    goto :goto_1

    .line 561
    .restart local v2    # "findItem":Landroid/view/MenuItem;
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "z2":Z
    goto :goto_2

    .line 571
    :cond_7
    const v6, 0x7f10043a

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 459
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onResume()V

    .line 460
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->setVolumeControlStream(I)V

    .line 461
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->finish()V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/AudioPlayerService;->registerPlayerView(Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;)V

    goto :goto_0
.end method

.method public setBuffered(I)V
    .locals 1
    .param p1, "progr"    # I

    .prologue
    .line 1128
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$32;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$32;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1134
    return-void
.end method

.method public setNumber(II)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 1100
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$29;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$29;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "playing"    # Z

    .prologue
    .line 1108
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$30;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$30;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method public setPosition(IJ)V
    .locals 2
    .param p1, "progr"    # I
    .param p2, "ms"    # J

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->canUpdateProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1118
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerActivity$31;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/AudioPlayerActivity$31;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;IJ)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public showLyrics()V
    .locals 3

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100194

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1080
    .local v0, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1081
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 1083
    :cond_0
    return-void
.end method

.method public updateCover(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 917
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    if-eqz v0, :cond_0

    .line 918
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateCover "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverAid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverOid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    if-nez v0, :cond_2

    .line 928
    :cond_1
    :goto_0
    return-void

    .line 923
    :cond_2
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverAid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverOid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-eq v0, v1, :cond_1

    .line 924
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverAid:I

    .line 925
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->coverOid:I

    .line 926
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity;->doUpdateCover(Z)V

    goto :goto_0
.end method

.method public updateLyrics()V
    .locals 6

    .prologue
    const v4, 0x7f100194

    const/4 v3, 0x0

    .line 1035
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getCurrentCoverScroller()Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, "cur":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1037
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$26;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/AudioPlayerActivity$26;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    .line 1041
    const-wide/16 v4, 0xa

    .line 1037
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1045
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1046
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->lyricsID:I

    if-lez v2, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/cache/AudioCache;->getLyrics(II)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "l":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1049
    const v2, 0x7f100196

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1051
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1054
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->file:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->lyricsID:I

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;-><init>(I)V

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerActivity$27;

    invoke-direct {v3, p0, v0}, Lcom/vkcoffee/android/AudioPlayerActivity$27;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/audio/AudioGetLyrics;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 1066
    invoke-virtual {v2, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public updatePager()V
    .locals 3

    .prologue
    .line 753
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity;->aview:Landroid/view/View;

    const v2, 0x7f100181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 754
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 757
    :cond_0
    return-void
.end method
