.class public Lcom/vkcoffee/android/fragments/NewsFragment;
.super Lcom/vkcoffee/android/fragments/PostListFragment;
.source "NewsFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;,
        Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;
    }
.end annotation


# static fields
.field private static final REFRESH_TIMEOUT_RECENT:J = 0x6ddd00L

.field private static final REFRESH_TIMEOUT_TOP:J = 0x1b7740L

.field private static listIDStatic:I


# instance fields
.field private clearForNew:Z

.field private currentButtonAnim:Landroid/animation/Animator;

.field private firstNav:Z

.field private forceNewData:Z

.field private from:Ljava/lang/String;

.field private lastOwnerId:I

.field private lastPosition:I

.field private lastPostId:I

.field private lastPreloadTime:J

.field private listID:I

.field private navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

.field private needScrollToTop:Z

.field private needSetSelection:Z

.field private newFrom:Ljava/lang/String;

.field private newNews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

.field private newPostsButtonPendingVisibility:Z

.field private newPostsHideBoundary:I

.field private newPostsHideThreshold:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reloadByTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/vkcoffee/android/fragments/NewsFragment;->listIDStatic:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    .line 91
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needSetSelection:Z

    .line 93
    iput v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideThreshold:I

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPreloadTime:J

    .line 95
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    .line 98
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsButtonPendingVisibility:Z

    .line 99
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->forceNewData:Z

    .line 100
    iput v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    .line 101
    iput v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPostId:I

    .line 102
    iput v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastOwnerId:I

    .line 103
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needScrollToTop:Z

    .line 105
    new-instance v0, Lcom/vkcoffee/android/fragments/NewsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 250
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->reloadByTime:Z

    .line 1073
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/fragments/NewsFragment;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/NewsFragment;)Lcom/vkcoffee/android/ui/OverlayTextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/vkcoffee/android/fragments/NewsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/NewsFragment;->fillSpinnerAdapter(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/fragments/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->showNew()V

    return-void
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPostId:I

    return p1
.end method

.method static synthetic access$3100(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/vkcoffee/android/fragments/NewsFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPreloadTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/fragments/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastOwnerId:I

    return p1
.end method

.method static synthetic access$4100(Lcom/vkcoffee/android/fragments/NewsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    return-void
.end method

.method static synthetic access$4200(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/vkcoffee/android/fragments/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needScrollToTop:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/vkcoffee/android/fragments/NewsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needScrollToTop:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/vkcoffee/android/fragments/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/vkcoffee/android/fragments/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    return v0
.end method

.method static synthetic access$4800(Lcom/vkcoffee/android/fragments/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->isTablet:Z

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    return v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/fragments/NewsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/NewsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideThreshold:I

    return v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/NewsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/NewsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setNewPostsBtnVisible(Z)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/vkcoffee/android/fragments/NewsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    return-void
.end method

.method private fillSpinnerAdapter(Ljava/util/List;Z)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isStartFromInteresting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsfeedList;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsfeedList;>;"
    const/4 v12, 0x3

    .line 350
    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->clear()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f0802d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020190

    const/4 v3, 0x0

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v5, 0x7f08050c

    .line 355
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, p2

    move-object v6, p0

    .line 354
    invoke-virtual/range {v0 .. v6}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->add(Ljava/lang/String;IILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x7f080422

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02020c

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->add(Ljava/lang/String;II)V

    .line 358
    new-array v10, v12, [Z

    fill-array-data v10, :array_0

    .line 359
    .local v10, "sectionEnables":[Z
    new-array v11, v12, [I

    fill-array-data v11, :array_1

    .line 360
    .local v11, "strRes":[I
    new-array v7, v12, [I

    fill-array-data v7, :array_2

    .line 361
    .local v7, "drawRes":[I
    new-array v9, v12, [I

    fill-array-data v9, :array_3

    .line 372
    .local v9, "ids":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v10

    if-ge v8, v0, :cond_2

    .line 373
    aget-boolean v0, v10, v8

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    aget v2, v11, v8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aget v2, v7, v8

    aget v3, v9, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->add(Ljava/lang/String;II)V

    .line 372
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 378
    .end local v7    # "drawRes":[I
    .end local v8    # "i":I
    .end local v9    # "ids":[I
    .end local v10    # "sectionEnables":[Z
    .end local v11    # "strRes":[I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 379
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsfeedList;

    iget v0, v0, Lcom/vkcoffee/android/NewsfeedList;->id:I

    if-lez v0, :cond_3

    .line 380
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsfeedList;

    iget-object v2, v0, Lcom/vkcoffee/android/NewsfeedList;->title:Ljava/lang/String;

    const v3, 0x7f020179

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsfeedList;

    iget v0, v0, Lcom/vkcoffee/android/NewsfeedList;->id:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->add(Ljava/lang/String;II)V

    .line 378
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navigationSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 385
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;

    iget v0, v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->listId:I

    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-ne v0, v1, :cond_5

    .line 387
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/NewsFragment;->setSelectedNavigationItem(I)V

    .line 385
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 391
    :cond_6
    return-void

    .line 358
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 359
    :array_1
    .array-data 4
        0x7f0801a4
        0x7f08034f
        0x7f08059b
    .end array-data

    .line 360
    :array_2
    .array-data 4
        0x7f02018b
        0x7f020193
        0x7f020197
    .end array-data

    .line 361
    :array_3
    .array-data 4
        -0x2
        -0x4
        -0x5
    .end array-data
.end method

.method public static getNewsfeedAwayTime()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1023
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "feed_last_unload"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1024
    .local v0, "lastTime":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 1027
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private initLastValuesIfNeed(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPostId:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastOwnerId:I

    if-gez v0, :cond_1

    .line 871
    if-nez p1, :cond_0

    .line 872
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->get()Ljava/util/ArrayList;

    move-result-object p1

    .line 874
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getFirstShowedIndex()I

    move-result v0

    sput v0, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    .line 875
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getFirstShowedOffset()I

    move-result v0

    sput v0, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    .line 876
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 877
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPostId:I

    .line 878
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastOwnerId:I

    .line 881
    :cond_1
    return-void
.end method

.method static synthetic lambda$showNew$499(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 607
    invoke-static {p0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replace(Ljava/util/List;)V

    return-void
.end method

.method private preloadIfNeed()V
    .locals 6

    .prologue
    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPreloadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 313
    .local v0, "needPreload":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 314
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->updateDeviceID(Ljava/lang/Runnable;)V

    .line 324
    :cond_0
    return-void

    .line 312
    .end local v0    # "needPreload":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetListIdIfNeed(Z)V
    .locals 10
    .param p0, "forseUpdate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 138
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v0

    .line 140
    .local v0, "isTop":Z
    const-string/jumbo v6, "feed_last_unload"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 141
    .local v2, "lastUnload":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v2

    if-eqz v0, :cond_2

    const-wide/32 v6, 0x1b7740

    :goto_0
    cmp-long v6, v8, v6

    if-lez v6, :cond_3

    sget-boolean v6, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 143
    .local v4, "updateByTime":Z
    :goto_1
    if-nez v4, :cond_0

    if-eqz p0, :cond_1

    .line 144
    :cond_0
    sput v5, Lcom/vkcoffee/android/fragments/NewsFragment;->listIDStatic:I

    .line 146
    :cond_1
    return-void

    .line 141
    .end local v4    # "updateByTime":Z
    :cond_2
    const-wide/32 v6, 0x6ddd00

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private setNewPostsBtnVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 544
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsButtonPendingVisibility:Z

    if-ne v0, p1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    .line 551
    :cond_1
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsButtonPendingVisibility:Z

    .line 552
    if-eqz p1, :cond_3

    .line 553
    const-string/jumbo v0, "user_action"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "action_type"

    const-string/jumbo v2, "fresh_news"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "action_param"

    const-string/jumbo v2, "show"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 555
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/OverlayTextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/OverlayTextView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/OverlayTextView;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/OverlayTextView;->setTranslationY(F)V

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const-string/jumbo v1, "translationY"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    .line 560
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    new-instance v1, Lcom/vkcoffee/android/fragments/NewsFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 567
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 569
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const-string/jumbo v1, "translationY"

    new-array v2, v5, [F

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->getBottom()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    .line 570
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    new-instance v1, Lcom/vkcoffee/android/fragments/NewsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0
.end method

.method private showNew()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/16 v6, 0xa

    .line 583
    const-string/jumbo v1, "user_action"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "action_type"

    const-string/jumbo v3, "feed_load_new"

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "action_param"

    const-string/jumbo v3, "click"

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 584
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPreloadTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPreloadTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 585
    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->setList(IZ)Z

    .line 616
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    if-eqz v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    goto :goto_0

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 591
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 592
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 593
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->onAppendItems(Ljava/util/List;)V

    .line 595
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_2

    .line 596
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateList()V

    .line 599
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 606
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 607
    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$5;->lambdaFactory$(Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 608
    iput v7, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    .line 609
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    goto/16 :goto_0

    .line 612
    .end local v0    # "forCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v8}, Lme/grishka/appkit/views/UsableRecyclerView;->scrollToPosition(I)V

    .line 613
    iput v7, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    .line 614
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    goto/16 :goto_0
.end method

.method private updateEmptyLabel()V
    .locals 4

    .prologue
    const v3, 0x7f080186

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    packed-switch v0, :pswitch_data_0

    .line 196
    const v0, 0x7f0802f1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyText(I)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonVisible(Z)V

    .line 200
    :goto_0
    return-void

    .line 177
    :pswitch_0
    const v0, 0x7f0802ed

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyText(I)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonText(I)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonVisible(Z)V

    goto :goto_0

    .line 182
    :pswitch_1
    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyText(I)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonVisible(Z)V

    goto :goto_0

    .line 186
    :pswitch_2
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyText(I)V

    .line 187
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonText(I)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonVisible(Z)V

    goto :goto_0

    .line 191
    :pswitch_3
    const v0, 0x7f0802f0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyText(I)V

    .line 192
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonText(I)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setEmptyButtonVisible(Z)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNewPostsBtn()V
    .locals 4

    .prologue
    .line 529
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsButtonPendingVisibility:Z

    .line 533
    .local v0, "curState":Z
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 534
    .local v1, "newState":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 535
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const v3, 0x7f0802c9

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setText(I)V

    .line 537
    :cond_3
    if-eq v0, v1, :cond_0

    .line 540
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setNewPostsBtnVisible(Z)V

    goto :goto_0

    .line 533
    .end local v1    # "newState":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected canAddPost(Lcom/vkcoffee/android/NewsEntry;)Z
    .locals 4
    .param p1, "post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-nez v1, :cond_1

    .line 243
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPreloadTime:J

    .line 246
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v2, p1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected canHideFromFeed()Z
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canHideNotInterestingFromFeed(Lcom/vkcoffee/android/NewsEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 490
    invoke-static {p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->canIgnore(Lcom/vkcoffee/android/NewsEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 975
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->cancelLoading()V

    .line 976
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 980
    :cond_0
    return-void
.end method

.method protected convertItemsIndexToReal(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1117
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doLoadData(II)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 886
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->refreshing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->forceNewData:Z

    if-nez v0, :cond_2

    .line 887
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    sget-object v1, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 889
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->onAppendItems(Ljava/util/List;)V

    .line 890
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    sget-object v1, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 891
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateList()V

    .line 892
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->loaded:Z

    .line 893
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0, v9}, Lme/grishka/appkit/utils/Preloader;->setMoreAvailable(Z)V

    .line 894
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->dataLoading:Z

    .line 895
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->showContent()V

    .line 896
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    sget v1, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    sget v2, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 903
    :goto_0
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->feedFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    .line 904
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->newNews:Ljava/util/List;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    .line 905
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->newNewsFrom:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    .line 906
    sget-boolean v0, Lcom/vkcoffee/android/data/Posts;->feedClearForNew:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    .line 907
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadIfNeed()V

    .line 971
    :goto_1
    return-void

    .line 901
    :cond_0
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needSetSelection:Z

    goto :goto_0

    .line 909
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->hasEntries()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 935
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 939
    :cond_2
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->forceNewData:Z

    .line 940
    iget v10, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    .line 941
    .local v10, "listId":I
    new-instance v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;

    if-nez p1, :cond_3

    const-string/jumbo v1, "0"

    :goto_2
    iget v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    .line 942
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    iget v6, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastOwnerId:I

    iget v7, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPostId:I

    invoke-static {}, Lcom/vkcoffee/android/fragments/NewsFragment;->getNewsfeedAwayTime()I

    move-result v8

    if-nez p1, :cond_4

    :goto_3
    move v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;-><init>(Ljava/lang/String;IILjava/lang/Boolean;IIIIZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/NewsFragment$6;

    invoke-direct {v1, p0, p0, p1, v10}, Lcom/vkcoffee/android/fragments/NewsFragment$6;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;Landroid/app/Fragment;II)V

    .line 943
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 970
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    goto :goto_1

    .line 941
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v9, v2

    .line 942
    goto :goto_3
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1033
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "userphoto"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "userPhoto":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    new-instance v3, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;

    invoke-direct {v3, p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/lang/String;)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-instance v4, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/adapters/CardMergeAdapter;-><init>([Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    goto :goto_0
.end method

.method public getDropDownWidth(Lme/grishka/appkit/views/NavigationSpinner;II)I
    .locals 2
    .param p1, "spinner"    # Lme/grishka/appkit/views/NavigationSpinner;
    .param p2, "defaultWidth"    # I
    .param p3, "screenWidth"    # I

    .prologue
    .line 129
    invoke-virtual {p1}, Lme/grishka/appkit/views/NavigationSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    const/high16 v0, 0x43a00000    # 320.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 131
    const/high16 v0, 0x43f00000    # 480.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    sub-int p2, v0, v1

    .line 134
    .end local p2    # "defaultWidth":I
    :cond_0
    return p2
.end method

.method public getList()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    return v0
.end method

.method protected getListReferrer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    packed-switch v0, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "feed_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "feed_top"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "feed"

    goto :goto_0

    .line 230
    :pswitch_1
    const-string/jumbo v0, "feed_recommendations"

    goto :goto_0

    .line 232
    :pswitch_2
    const-string/jumbo v0, "feed_friends"

    goto :goto_0

    .line 234
    :pswitch_3
    const-string/jumbo v0, "feed_groups"

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "news"

    return-object v0
.end method

.method synthetic lambda$doLoadData$502()V
    .locals 5

    .prologue
    .line 912
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->get()Ljava/util/ArrayList;

    move-result-object v1

    .line 913
    .local v1, "e":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getLists()Ljava/util/ArrayList;

    move-result-object v3

    .line 914
    .local v3, "newsfeedLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsfeedList;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v2

    .line 915
    .local v2, "isStartFromInteresting":Z
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getFrom()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    .line 916
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getFirstShowedIndex()I

    move-result v4

    sput v4, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    .line 917
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getFirstShowedOffset()I

    move-result v4

    sput v4, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    .line 918
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 919
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 935
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-static {p0, v3, v2, v1}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method synthetic lambda$null$495(Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/NewsFragment;->fillSpinnerAdapter(Ljava/util/List;Z)V

    return-void
.end method

.method synthetic lambda$null$501(Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/NewsFragment;->fillSpinnerAdapter(Ljava/util/List;Z)V

    .line 924
    invoke-virtual {p0, p3, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 926
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    sget v1, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    sget v2, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 933
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadIfNeed()V

    .line 934
    return-void

    .line 931
    :cond_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needSetSelection:Z

    goto :goto_0
.end method

.method synthetic lambda$onCreateView$497(Landroid/view/View;)V
    .locals 3
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 473
    const-string/jumbo v0, "user_action"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "action_type"

    const-string/jumbo v2, "fresh_news"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "action_param"

    const-string/jumbo v2, "click"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 474
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->showNew()V

    .line 475
    return-void
.end method

.method synthetic lambda$onViewCreated$496()V
    .locals 4

    .prologue
    .line 403
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->getLists()Ljava/util/ArrayList;

    move-result-object v2

    .line 404
    .local v2, "newsfeedLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsfeedList;>;"
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v1

    .line 405
    .local v1, "isStartFromInteresting":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 406
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 407
    invoke-static {p0, v2, v1}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/ArrayList;Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    :cond_0
    return-void
.end method

.method synthetic lambda$preloadIfNeed$494()V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->hasEntries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->initLastValuesIfNeed(Ljava/util/ArrayList;)V

    .line 320
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadNew()V

    .line 322
    :cond_1
    return-void
.end method

.method synthetic lambda$showNew$498()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->scrollToPosition(I)V

    .line 601
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 602
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 13
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 254
    sget-object v8, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->feed:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    invoke-static {v8}, Lcom/vkcoffee/android/attachments/MarketAttachment;->setLastSource(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;)V

    .line 256
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->firstNav:Z

    .line 258
    invoke-virtual {p1, v12, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 260
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v0

    .line 261
    .local v0, "isTop":Z
    const-string/jumbo v8, "feed_last_unload"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v4, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 262
    .local v2, "lastUnload":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v2

    if-eqz v0, :cond_4

    const-wide/32 v8, 0x1b7740

    :goto_0
    cmp-long v8, v10, v8

    if-lez v8, :cond_5

    sget-boolean v8, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v8, :cond_5

    move v5, v6

    .line 265
    .local v5, "updateByTime":Z
    :goto_1
    const-string/jumbo v8, "feed_list"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    .line 271
    sget-boolean v8, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v8, :cond_6

    sget v8, Lcom/vkcoffee/android/fragments/NewsFragment;->listIDStatic:I

    iget v9, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-eq v8, v9, :cond_6

    move v1, v6

    .line 272
    .local v1, "needReloadList":Z
    :goto_2
    if-eqz v1, :cond_0

    .line 273
    sget v8, Lcom/vkcoffee/android/fragments/NewsFragment;->listIDStatic:I

    iput v8, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    .line 274
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->clear()V

    .line 275
    invoke-static {}, Lcom/vkcoffee/android/data/Posts;->clear()V

    .line 276
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "feed_list"

    iget v10, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    :cond_0
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->emptyView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateEmptyLabel()V

    .line 281
    :cond_1
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/NewsFragment;->setHasOptionsMenu(Z)V

    .line 283
    if-nez v1, :cond_2

    if-eqz v5, :cond_3

    .line 284
    :cond_2
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->forceNewData:Z

    .line 285
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needSetSelection:Z

    .line 286
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->reloadByTime:Z

    .line 287
    invoke-static {v7}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFirstShowedIndex(I)I

    move-result v6

    sput v6, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    .line 288
    invoke-static {v7}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFirstShowedOffset(I)I

    move-result v6

    sput v6, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    .line 291
    :cond_3
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 293
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.vkcoffee.android.USER_NOTIFICATIONS_ENABLE_TOP_NEWSFEED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v7, v8, v9, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.vkcoffee.android.USER_NOTIFICATIONS_HIDE_USER_NOTIFICATION"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v7, v8, v9, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 297
    return-void

    .line 262
    .end local v1    # "needReloadList":Z
    .end local v5    # "updateByTime":Z
    :cond_4
    const-wide/32 v8, 0x6ddd00

    goto/16 :goto_0

    :cond_5
    move v5, v7

    goto/16 :goto_1

    .restart local v5    # "updateByTime":Z
    :cond_6
    move v1, v7

    .line 271
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->setNewsfeedTop(Ljava/lang/Boolean;)V

    .line 345
    invoke-static {v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->setStartFromInterestingPending(Z)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setList(IZ)Z

    .line 347
    return-void
.end method

.method protected onCreateNavigationSpinner(Landroid/view/LayoutInflater;)Landroid/widget/Spinner;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1019
    const v0, 0x7f0300e9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method protected bridge synthetic onCreateNavigationSpinnerAdapter()Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->onCreateNavigationSpinnerAdapter()Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateNavigationSpinnerAdapter()Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;
    .locals 2

    .prologue
    .line 1015
    new-instance v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 517
    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 518
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 450
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/PostListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateEmptyLabel()V

    .line 452
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needSetSelection:Z

    if-eqz v2, :cond_0

    .line 453
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needSetSelection:Z

    .line 454
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    sget v3, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    sget v4, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 458
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    .line 459
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setTextColor(I)V

    .line 460
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 462
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setBackgroundResource(I)V

    .line 463
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setGravity(I)V

    .line 464
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/vkcoffee/android/ui/OverlayTextView;->setPadding(IIII)V

    .line 465
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const v3, 0x7f0201ab

    invoke-virtual {v2, v3, v5, v5, v5}, Lcom/vkcoffee/android/ui/OverlayTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 466
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setCompoundDrawablePadding(I)V

    .line 467
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 468
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setElevation(F)V

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setVisibility(I)V

    .line 471
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    const v3, 0x7f020108

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setOverlay(I)V

    .line 472
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/OverlayTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    const/16 v4, 0x31

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 477
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 478
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->contentWrap:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 481
    return-object v1
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 495
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 496
    .local v0, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    instance-of v3, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;

    if-eqz v3, :cond_0

    .line 497
    check-cast v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;

    .end local v0    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    iput-object v4, v0, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 500
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 501
    sget-object v1, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    sget-object v1, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 503
    sget-object v1, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 504
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFirstShowedIndex(I)I

    move-result v1

    sput v1, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    .line 505
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    invoke-static {v1}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFirstShowedOffset(I)I

    move-result v1

    sput v1, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    .line 506
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->from:Ljava/lang/String;

    sput-object v1, Lcom/vkcoffee/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 507
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    sput-object v1, Lcom/vkcoffee/android/data/Posts;->newNews:Ljava/util/List;

    .line 508
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newFrom:Ljava/lang/String;

    sput-object v1, Lcom/vkcoffee/android/data/Posts;->newNewsFrom:Ljava/lang/String;

    .line 509
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->clearForNew:Z

    sput-boolean v1, Lcom/vkcoffee/android/data/Posts;->feedClearForNew:Z

    .line 511
    iput-object v4, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsBtn:Lcom/vkcoffee/android/ui/OverlayTextView;

    .line 513
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onDestroyView()V

    .line 514
    return-void

    :cond_2
    move v1, v2

    .line 505
    goto :goto_1
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 328
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onDetach()V

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onEmptyViewBtnClick()V
    .locals 3

    .prologue
    .line 204
    iget v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    const-class v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 210
    :pswitch_2
    const-class v0, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f10026a

    if-ne v0, v1, :cond_0

    .line 522
    const-class v0, Lcom/vkcoffee/android/fragments/NewsSearchFragment;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 523
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 338
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onPause()V

    .line 339
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "feed_last_unload"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 989
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    .line 990
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 991
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onRefresh()V

    .line 992
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 301
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onResume()V

    .line 302
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "feed_last_unload"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 303
    .local v2, "lastUnload":J
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v0

    .line 304
    .local v0, "isTop":Z
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->reloadByTime:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    if-eqz v0, :cond_1

    const-wide/32 v4, 0x1b7740

    :goto_0
    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    sget-boolean v1, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v1, :cond_0

    .line 306
    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/vkcoffee/android/fragments/NewsFragment;->setList(IZ)Z

    .line 308
    :cond_0
    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->reloadByTime:Z

    .line 309
    return-void

    .line 304
    :cond_1
    const-wide/32 v4, 0x6ddd00

    goto :goto_0
.end method

.method protected onSpinnerItemSelected(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 996
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->firstNav:Z

    if-eqz v2, :cond_0

    .line 997
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->firstNav:Z

    .line 1010
    :goto_0
    return v1

    .line 1000
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    if-eqz v2, :cond_2

    .line 1001
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->setSelectedItem(I)V

    .line 1003
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;

    .line 1004
    .local v0, "item":Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "list_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    iget v2, v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->listId:I

    sput v2, Lcom/vkcoffee/android/fragments/NewsFragment;->listIDStatic:I

    .line 1006
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "feed_list"

    iget v3, v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->listId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1008
    :cond_1
    iget v1, v0, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;->listId:I

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->setList(I)Z

    .line 1010
    .end local v0    # "item":Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter$Item;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->onCreateNavigationSpinnerAdapter()Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    .line 397
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setSpinnerAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 399
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navigationSpinner:Landroid/widget/Spinner;

    instance-of v0, v0, Lme/grishka/appkit/views/NavigationSpinner;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navigationSpinner:Landroid/widget/Spinner;

    check-cast v0, Lme/grishka/appkit/views/NavigationSpinner;

    invoke-virtual {v0, p0}, Lme/grishka/appkit/views/NavigationSpinner;->setDropDownWidthHelper(Lme/grishka/appkit/views/NavigationSpinner$DropDownWidthHelper;)V

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 409
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 410
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/NewsFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/NewsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 440
    return-void
.end method

.method public preloadNew()V
    .locals 19

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->errorView:Landroid/view/View;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->errorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->refreshing:Z

    if-nez v2, :cond_0

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v2, :cond_0

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/NewsFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 629
    const/4 v12, -0x1

    .line 630
    .local v12, "currentPos":I
    const/4 v14, 0x0

    .line 631
    .local v14, "firstPostID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    move-object v13, v2

    .line 632
    .local v13, "first":Lcom/vkcoffee/android/NewsEntry;
    :goto_1
    if-eqz v13, :cond_2

    .line 633
    iget v2, v13, Lcom/vkcoffee/android/NewsEntry;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 649
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v15

    .line 651
    .local v15, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    if-eqz v15, :cond_3

    instance-of v2, v15, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    if-eqz v2, :cond_3

    .line 652
    check-cast v15, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    .end local v15    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, v15, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    move-object/from16 v17, v0

    .line 653
    .local v17, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v2, v3, :cond_5

    .line 655
    move/from16 v12, v16

    .line 661
    .end local v16    # "i":I
    .end local v17    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    move/from16 v18, v0

    .line 662
    .local v18, "listId":I
    new-instance v2, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;

    const-string/jumbo v3, ""

    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x14

    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastOwnerId:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->lastPostId:I

    .line 663
    invoke-static {}, Lcom/vkcoffee/android/fragments/NewsFragment;->getNewsfeedAwayTime()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;-><init>(Ljava/lang/String;IILjava/lang/Boolean;IIIIZ)V

    const-string/jumbo v3, "current_first_post"

    .line 664
    invoke-virtual {v2, v3, v14}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    const-string/jumbo v3, "current_pos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 665
    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/NewsFragment$5;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment$5;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;I)V

    .line 666
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNewsReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 631
    .end local v13    # "first":Lcom/vkcoffee/android/NewsEntry;
    .end local v18    # "listId":I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 636
    .restart local v13    # "first":Lcom/vkcoffee/android/NewsEntry;
    :sswitch_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "wall%d_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v13, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v13, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 637
    goto/16 :goto_2

    .line 639
    :sswitch_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "photo%d_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v13, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v13, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 640
    goto/16 :goto_2

    .line 642
    :sswitch_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "addedphoto%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v13, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 643
    goto/16 :goto_2

    .line 645
    :sswitch_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "taggedphoto%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v13, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 653
    .restart local v16    # "i":I
    .restart local v17    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 662
    .end local v16    # "i":I
    .end local v17    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    .restart local v18    # "listId":I
    :cond_6
    const/16 v4, 0x19

    goto/16 :goto_4

    .line 633
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public setList(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->setList(IZ)Z

    move-result v0

    return v0
.end method

.method public setList(IZ)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x1

    .line 153
    iget v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    .line 154
    const/4 v0, 0x0

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    const/16 v1, -0x2328

    if-eq p1, v1, :cond_2

    .line 157
    iput p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->listID:I

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 160
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->cancelLoading()V

    .line 161
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->showProgress()V

    .line 162
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->refreshing:Z

    .line 163
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->loadData()V

    .line 164
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newNews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 165
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->newPostsHideBoundary:I

    .line 166
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateNewPostsBtn()V

    .line 167
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->needScrollToTop:Z

    .line 168
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->emptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/NewsFragment;->updateEmptyLabel()V

    goto :goto_0
.end method

.method protected setSelectedNavigationItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->setSelectedNavigationItem(I)V

    .line 445
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment;->navAdapter:Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/adapters/NewsSpinnerAdapter;->setSelectedItem(I)V

    .line 446
    return-void
.end method
