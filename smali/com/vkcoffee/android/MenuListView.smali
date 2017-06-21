.class public Lcom/vkcoffee/android/MenuListView;
.super Landroid/widget/FrameLayout;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;,
        Lcom/vkcoffee/android/MenuListView$DividerViewHolder;,
        Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;,
        Lcom/vkcoffee/android/MenuListView$ItemViewHolder;,
        Lcom/vkcoffee/android/MenuListView$Listener;,
        Lcom/vkcoffee/android/MenuListView$MenuAdapter;,
        Lcom/vkcoffee/android/MenuListView$MenuItem;,
        Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;,
        Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;,
        Lcom/vkcoffee/android/MenuListView$MenuListView$BirthdayViewHolder$$Lambda$1;,
        Lcom/vkcoffee/android/MenuListView$PaddingViewHolder;,
        Lcom/vkcoffee/android/MenuListView$SectionViewHolder;,
        Lcom/vkcoffee/android/MenuListView$UserViewHolder;
    }
.end annotation


# static fields
.field public static final AUDIOS_SP:Ljava/lang/String; = "AUDIOS"

.field public static final CLOSE_SP:Ljava/lang/String; = "CLOSE"

.field public static final DIALOGS_SP:Ljava/lang/String; = "DIALOGS"

.field public static final EMPTY:I = -0x1

.field public static final FAVE_SP:Ljava/lang/String; = "FAVE"

.field public static final FEEDBACK_SP:Ljava/lang/String; = "FEEDBACK"

.field public static final FRIENDS_SP:Ljava/lang/String; = "FRIENDS"

.field public static final GAMES_SP:Ljava/lang/String; = "GAMES"

.field public static final GROUPS_SP:Ljava/lang/String; = "GROUPS"

.field public static final NEWS_SP:Ljava/lang/String; = "NEWS"

.field public static final OFFLINE_SP:Ljava/lang/String; = "OFFLINE"

.field public static final PHOTOS_SP:Ljava/lang/String; = "PHOTOS"

.field public static final PIN_SP:Ljava/lang/String; = "PIN"

.field public static final SEARCH_SP:Ljava/lang/String; = "SEARCH"

.field public static final SETTINGS_SP:Ljava/lang/String; = "SETTINGS"

.field public static final UNREAD_SP:Ljava/lang/String; = "UNREAD"

.field public static final UNTYPING_SP:Ljava/lang/String; = "UNTYPING"

.field public static final VIDEOS_SP:Ljava/lang/String; = "VIDEOS"

.field public static iconsRes:[I

.field public static lastInstance:Lcom/vkcoffee/android/MenuListView;

.field private static reminderText:Ljava/lang/CharSequence;

.field public static titles:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/vkcoffee/android/MenuListView$MenuAdapter;

.field private audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

.field private audioProgress:Landroid/widget/ProgressBar;

.field private audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

.field private birthdayUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private coverAid:I

.field private coverOid:I

.field private currentItem:I

.field private expansion:F

.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

.field private imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

.field private isTopLevel:Z

.field public itemPadding:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/MenuListView$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private lastClick:J

.field public list:Lme/grishka/appkit/views/UsableRecyclerView;

.field private listSelector:Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;

.field private listener:Lcom/vkcoffee/android/MenuListView$Listener;

.field private navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private playerView:Landroid/view/View;

.field private prevExpansion:F

.field private prevStatusBarHeight:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private statusBarHeight:I

.field private tabletNavIcon:Landroid/view/ViewGroup;

.field private userName:Ljava/lang/String;

.field private userPhoto:Ljava/lang/String;

.field private userStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/MenuListView;->reminderText:Ljava/lang/CharSequence;

    .line 1309
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1051
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    new-instance v0, Lcom/vkcoffee/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$1;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .line 141
    new-instance v0, Lcom/vkcoffee/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$2;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->birthdayUsers:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->currentItem:I

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/MenuListView;->lastClick:J

    .line 170
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->prevStatusBarHeight:I

    .line 172
    new-instance v0, Lcom/vkcoffee/android/MenuListView$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$3;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 1052
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->init()V

    .line 1053
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1056
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance v0, Lcom/vkcoffee/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$1;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .line 141
    new-instance v0, Lcom/vkcoffee/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$2;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->birthdayUsers:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->currentItem:I

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/MenuListView;->lastClick:J

    .line 170
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->prevStatusBarHeight:I

    .line 172
    new-instance v0, Lcom/vkcoffee/android/MenuListView$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$3;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 1057
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->init()V

    .line 1058
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navDelegate"    # Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;
    .param p3, "topLevel"    # Z

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/vkcoffee/android/MenuListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$1;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .line 141
    new-instance v0, Lcom/vkcoffee/android/MenuListView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$2;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->birthdayUsers:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->currentItem:I

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->friends:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->groups:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/MenuListView;->lastClick:J

    .line 170
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/MenuListView;->prevStatusBarHeight:I

    .line 172
    new-instance v0, Lcom/vkcoffee/android/MenuListView$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MenuListView$3;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 1045
    iput-object p2, p0, Lcom/vkcoffee/android/MenuListView;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    .line 1046
    iput-boolean p3, p0, Lcom/vkcoffee/android/MenuListView;->isTopLevel:Z

    .line 1047
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->init()V

    .line 1048
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1808
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->updateListPadding()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/MenuListView;I)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/vkcoffee/android/MenuListView;->coverAid:I

    return-void
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/MenuListView;IILandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1589
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/MenuListView;->getAndShowCover(IILandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->birthdayUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$MenuAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->adapter:Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    return-object v0
.end method

.method static synthetic access$14()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/vkcoffee/android/MenuListView;->reminderText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->listener:Lcom/vkcoffee/android/MenuListView$Listener;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkcoffee/android/MenuListView;)F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    return v0
.end method

.method static synthetic access$17(Lcom/vkcoffee/android/MenuListView;Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    return-void
.end method

.method static synthetic access$18(Lcom/vkcoffee/android/MenuListView;)I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    return v0
.end method

.method static synthetic access$19(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1580
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->updateAudioAlbumArt()V

    return-void
.end method

.method static synthetic access$20(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkcoffee/android/MenuListView;)I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/vkcoffee/android/MenuListView;->currentItem:I

    return v0
.end method

.method static synthetic access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkcoffee/android/MenuListView;)F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    return v0
.end method

.method static synthetic access$25(Lcom/vkcoffee/android/MenuListView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkcoffee/android/MenuListView;Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 1613
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/MenuListView;->openFromMenu(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$27(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 109
    sput-object p0, Lcom/vkcoffee/android/MenuListView;->reminderText:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$28(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView;->userStatus:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/MenuListView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView;->userPhoto:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/MenuListView;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView;->userName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/MenuListView;I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/vkcoffee/android/MenuListView;->coverOid:I

    return-void
.end method

.method private getAndShowCover(IILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 1590
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v0, :cond_0

    .line 1591
    const v0, 0x7f0202b5

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1592
    const/4 v0, 0x1

    new-instance v1, Lcom/vkcoffee/android/MenuListView$12;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/vkcoffee/android/MenuListView$12;-><init>(Lcom/vkcoffee/android/MenuListView;Landroid/widget/ImageView;II)V

    invoke-static {p2, p1, v0, v1}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1607
    :cond_0
    return-void
.end method

.method public static getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f020196

    .line 1192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1193
    .local v0, "itemIcon":Landroid/graphics/drawable/Drawable;
    const-string v1, "NEWS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1228
    :cond_0
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-object v1

    .line 1195
    :cond_1
    const-string v1, "FEEDBACK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1197
    goto :goto_0

    :cond_2
    const-string v1, "DIALOGS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1199
    goto :goto_0

    :cond_3
    const-string v1, "FRIENDS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1201
    goto :goto_0

    :cond_4
    const-string v1, "GROUPS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1203
    goto :goto_0

    :cond_5
    const-string v1, "PHOTOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1205
    goto :goto_0

    :cond_6
    const-string v1, "VIDEOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1207
    goto/16 :goto_0

    :cond_7
    const-string v1, "AUDIOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1209
    goto/16 :goto_0

    :cond_8
    const-string v1, "GAMES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1211
    goto/16 :goto_0

    :cond_9
    const-string v1, "FAVE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1213
    goto/16 :goto_0

    :cond_a
    const-string v1, "SEARCH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1215
    goto/16 :goto_0

    :cond_b
    const-string v1, "SETTINGS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1217
    goto/16 :goto_0

    :cond_c
    const-string v1, "OFFLINE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1219
    goto/16 :goto_0

    :cond_d
    const-string v1, "UNREAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1221
    goto/16 :goto_0

    :cond_e
    const-string v1, "UNTYPING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1223
    goto/16 :goto_0

    :cond_f
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1225
    goto/16 :goto_0

    :cond_10
    const-string v1, "PIN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020323

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getRecommendedWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1610
    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1231
    const-string v0, ""

    .line 1232
    .local v0, "itemName":Ljava/lang/String;
    const-string v1, "NEWS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    :cond_0
    :goto_0
    return-object v0

    .line 1234
    :cond_1
    const-string v1, "FEEDBACK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    goto :goto_0

    :cond_2
    const-string v1, "DIALOGS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1238
    goto :goto_0

    :cond_3
    const-string v1, "FRIENDS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1240
    goto :goto_0

    :cond_4
    const-string v1, "GROUPS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    goto :goto_0

    :cond_5
    const-string v1, "PHOTOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08034f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1244
    goto :goto_0

    :cond_6
    const-string v1, "VIDEOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08059b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    goto :goto_0

    :cond_7
    const-string v1, "AUDIOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1248
    goto/16 :goto_0

    :cond_8
    const-string v1, "GAMES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1249
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1250
    goto/16 :goto_0

    :cond_9
    const-string v1, "FAVE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1252
    goto/16 :goto_0

    :cond_a
    const-string v1, "SEARCH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1253
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1254
    goto/16 :goto_0

    :cond_b
    const-string v1, "SETTINGS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1256
    goto/16 :goto_0

    :cond_c
    const-string v1, "OFFLINE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1257
    const-string v0, "\u0420\u0435\u0436\u0438\u043c Offline"

    .line 1258
    goto/16 :goto_0

    :cond_d
    const-string v1, "UNREAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1259
    const-string v0, "\u041d\u0435\u0447\u0438\u0442\u0430\u043b\u043a\u0430"

    .line 1260
    goto/16 :goto_0

    :cond_e
    const-string v1, "UNTYPING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1261
    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044b\u0439 \u043d\u0430\u0431\u043e\u0440"

    .line 1262
    goto/16 :goto_0

    :cond_f
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1263
    const-string v0, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    .line 1264
    goto/16 :goto_0

    :cond_10
    const-string v1, "PIN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1265
    const-string v0, "\u0417\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    goto/16 :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    .line 1316
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->reCount()V

    .line 1317
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->getSize()I

    move-result v8

    new-array v8, v8, [I

    sput-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    .line 1318
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->getSize()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    sput-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    .line 1319
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f0202fe

    aput v10, v8, v9

    .line 1320
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f0202fd

    aput v10, v8, v9

    .line 1321
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f0202ff

    aput v10, v8, v9

    .line 1322
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020190

    aput v10, v8, v9

    .line 1323
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020191

    aput v10, v8, v9

    .line 1324
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f02018e

    aput v10, v8, v9

    .line 1325
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f02018b

    aput v10, v8, v9

    .line 1326
    :cond_6
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f02018a

    aput v10, v8, v9

    .line 1327
    :cond_7
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020193

    aput v10, v8, v9

    .line 1328
    :cond_8
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020197

    aput v10, v8, v9

    .line 1329
    :cond_9
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f02018f

    aput v10, v8, v9

    .line 1330
    :cond_a
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f02018c

    aput v10, v8, v9

    .line 1331
    :cond_b
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_c

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020189

    aput v10, v8, v9

    .line 1332
    :cond_c
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_d

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f02018d

    aput v10, v8, v9

    .line 1333
    :cond_d
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020196

    aput v10, v8, v9

    .line 1334
    :cond_e
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020322

    aput v10, v8, v9

    .line 1335
    :cond_f
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const v10, 0x7f020323

    aput v10, v8, v9

    .line 1339
    :cond_10
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_11

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const-string v10, "\u0420\u0435\u0436\u0438\u043c Offline"

    aput-object v10, v8, v9

    .line 1340
    :cond_11
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_12

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const-string v10, "\u041d\u0435\u0447\u0438\u0442\u0430\u043b\u043a\u0430"

    aput-object v10, v8, v9

    .line 1341
    :cond_12
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_13

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const-string v10, "\u0421\u043a\u0440\u044b\u0442\u044b\u0439 \u043d\u0430\u0431\u043e\u0440"

    aput-object v10, v8, v9

    .line 1342
    :cond_13
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_14

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1343
    :cond_14
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_15

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08017a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1344
    :cond_15
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_16

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1345
    :cond_16
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_17

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0801a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1346
    :cond_17
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_18

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1347
    :cond_18
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_19

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08034f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1348
    :cond_19
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1a

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08059b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1349
    :cond_1a
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1b

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080094

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1350
    :cond_1b
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1c

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0801b6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1351
    :cond_1c
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1d

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080173

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1352
    :cond_1d
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1e

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08045a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1353
    :cond_1e
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1f

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802a9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1354
    :cond_1f
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_20

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const-string v10, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    aput-object v10, v8, v9

    .line 1355
    :cond_20
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_21

    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const-string v10, "\u0417\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    aput-object v10, v8, v9

    .line 1358
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v8, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    array-length v8, v8

    if-lt v1, v8, :cond_28

    .line 1363
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0300d2

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/vkcoffee/android/MenuListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    .line 1364
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v9, 0x7f10028c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->audioProgress:Landroid/widget/ProgressBar;

    .line 1365
    new-instance v8, Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 1366
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v9, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1367
    iget-object v7, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 1368
    .local v7, "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    new-instance v6, Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    .line 1369
    .local v6, "menuAdapter":Lcom/vkcoffee/android/MenuListView$MenuAdapter;
    iput-object v6, p0, Lcom/vkcoffee/android/MenuListView;->adapter:Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    .line 1370
    invoke-virtual {v7, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1371
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setHasFixedSize(Z)V

    .line 1372
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v9, 0x7f020101

    invoke-virtual {v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 1373
    sget-boolean v8, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v8, :cond_22

    .line 1374
    new-instance v8, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200f4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/high16 v10, 0x434c0000    # 204.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->listSelector:Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;

    .line 1375
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView;->listSelector:Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;

    invoke-virtual {v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1377
    :cond_22
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-boolean v8, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v8, :cond_29

    const v8, 0x7f0f0052

    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/MenuListView;->setBackgroundColor(I)V

    .line 1378
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/MenuListView;->setClipToPadding(Z)V

    .line 1379
    sget-boolean v8, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v8, :cond_23

    .line 1380
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    .line 1381
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-boolean v8, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v8, :cond_2a

    const v8, 0x7f0f0052

    :goto_2
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1382
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1383
    .local v2, "icon":Landroid/widget/ImageView;
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1384
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1385
    const v9, 0x7f020317

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-static {v9, v8}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1388
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_3
    new-instance v8, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    const v9, -0x5b554f

    invoke-direct {v8, v0, v9}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1392
    const v8, 0x7f020101

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1393
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x42600000    # 56.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    const/high16 v11, 0x42600000    # 56.0f

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v11

    const/16 v12, 0x11

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x42a80000    # 84.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v11

    const/16 v12, 0x33

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1395
    invoke-static {p0}, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "icon":Landroid/widget/ImageView;
    :cond_23
    new-instance v8, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v11, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    iget-object v12, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {v11, v12}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 1398
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "username"

    const-string v10, "DELETED"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->userName:Ljava/lang/String;

    .line 1399
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "userphoto"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 1400
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "userstatus"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/MenuListView;->userStatus:Ljava/lang/String;

    .line 1401
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateBirthdays()V

    .line 1402
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1403
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->updateListPadding()V

    .line 1404
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v9, 0x7f100289

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/MenuListView$7;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/MenuListView$7;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v9, 0x7f100287

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/MenuListView$8;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/MenuListView$8;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1420
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v9, 0x7f10028a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 1421
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v9, 0x7f10028b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setSelected(Z)V

    .line 1422
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1424
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/MenuListView;->addView(Landroid/view/View;)V

    .line 1425
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/MenuListView;->addView(Landroid/view/View;)V

    .line 1426
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    if-eqz v8, :cond_24

    .line 1427
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/MenuListView;->addView(Landroid/view/View;)V

    .line 1429
    :cond_24
    sget-boolean v8, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v8, :cond_25

    .line 1430
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    new-instance v9, Lcom/vkcoffee/android/MenuListView$9;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/MenuListView$9;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-virtual {v8, v9}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1450
    :cond_25
    new-instance v8, Lcom/vkcoffee/android/MenuListView$10;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/MenuListView$10;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/MenuListView;->setListener(Lcom/vkcoffee/android/MenuListView$Listener;)V

    .line 1526
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1527
    .local v3, "installer":Ljava/lang/String;
    if-eqz v3, :cond_27

    const-string v8, "amazon"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1528
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1529
    .local v4, "it":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 1537
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_27
    :goto_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Lcom/vkcoffee/android/MenuListView$11;

    invoke-direct {v9, p0}, Lcom/vkcoffee/android/MenuListView$11;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1553
    return-void

    .line 1359
    .end local v3    # "installer":Ljava/lang/String;
    .end local v6    # "menuAdapter":Lcom/vkcoffee/android/MenuListView$MenuAdapter;
    .end local v7    # "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    :cond_28
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    new-instance v9, Lcom/vkcoffee/android/MenuListView$MenuItem;

    sget-object v10, Lcom/vkcoffee/android/MenuListView;->iconsRes:[I

    aget v10, v10, v1

    sget-object v11, Lcom/vkcoffee/android/MenuListView;->titles:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-direct {v9, v10, v1, v11}, Lcom/vkcoffee/android/MenuListView$MenuItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1377
    .restart local v6    # "menuAdapter":Lcom/vkcoffee/android/MenuListView$MenuAdapter;
    .restart local v7    # "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    :cond_29
    const v8, 0x7f0f0051

    goto/16 :goto_1

    .line 1381
    :cond_2a
    const v8, 0x7f0f0051

    goto/16 :goto_2

    .line 1386
    .restart local v2    # "icon":Landroid/widget/ImageView;
    :cond_2b
    const v9, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-static {v9, v8}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_3

    .line 1530
    .end local v2    # "icon":Landroid/widget/ImageView;
    .restart local v3    # "installer":Ljava/lang/String;
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/MenuListView$MenuItem;

    .line 1531
    .local v5, "item":Lcom/vkcoffee/android/MenuListView$MenuItem;
    iget v8, v5, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    const/16 v9, 0x9

    if-ne v8, v9, :cond_26

    .line 1532
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private itemIndexToAdapterPosition(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1564
    const/4 v0, 0x1

    .line 1565
    .local v0, "i":I
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1566
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1572
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1567
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/MenuListView$MenuItem;

    iget v2, v2, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    if-eq v2, p1, :cond_0

    .line 1570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private openFromMenu(Ljava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 3
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "back"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1614
    .local p1, "fclass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_1

    .line 1615
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1619
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 1620
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 1631
    :goto_1
    return-void

    .line 1616
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/widget/SlidingPaneLayout;

    if-eqz v1, :cond_0

    .line 1617
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_0

    .line 1621
    :cond_2
    iget-boolean v1, p0, Lcom/vkcoffee/android/MenuListView;->isTopLevel:Z

    if-eqz v1, :cond_4

    .line 1622
    if-eqz p2, :cond_3

    .line 1623
    const-string v1, "_from_menu"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1625
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView;->navDelegate:Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;

    invoke-static {v1, p1, p2, v2}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Lcom/vkcoffee/android/ui/NavigationDrawerDelegate;)Landroid/app/Fragment;

    goto :goto_1

    .line 1627
    :cond_4
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/MainActivity;

    invoke-direct {v1, p1, v2, p2}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/navigation/Navigator;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1628
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1629
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private updateAudioAlbumArt()V
    .locals 5

    .prologue
    .line 1581
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1582
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 1583
    .local v0, "cur":Lcom/vkcoffee/android/AudioFile;
    iget v1, p0, Lcom/vkcoffee/android/MenuListView;->coverAid:I

    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView;->coverOid:I

    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-eq v1, v2, :cond_1

    .line 1584
    :cond_0
    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v3, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v4, 0x7f100288

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3, v1}, Lcom/vkcoffee/android/MenuListView;->getAndShowCover(IILandroid/widget/ImageView;)V

    .line 1587
    .end local v0    # "cur":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    return-void
.end method

.method private updateListPadding()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1809
    const/4 v0, 0x0

    .line 1810
    .local v0, "pad":I
    iget v1, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1811
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1813
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1814
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1816
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1817
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v3, v3, v3, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 1819
    :cond_2
    return-void
.end method


# virtual methods
.method public getOfflineCounter()I
    .locals 3

    .prologue
    .line 1170
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "offline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    const/4 v0, -0x7

    .line 1173
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x5

    goto :goto_0
.end method

.method public getReadCounter()I
    .locals 3

    .prologue
    .line 1177
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalRead"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    const/4 v0, -0x7

    .line 1180
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x5

    goto :goto_0
.end method

.method public getTypeCounter()I
    .locals 3

    .prologue
    .line 1184
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    const/4 v0, -0x7

    .line 1187
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x5

    goto :goto_0
.end method

.method lambda$init$618(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 1561
    :goto_0
    return-void

    .line 1559
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method lambda$onAttachedToWindow$619()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 1710
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .local v0, "friends1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 1712
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 1713
    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1715
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v1, "groups1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 1717
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 1718
    const/4 v3, 0x5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1720
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/MenuListView;->update(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .end local v0    # "friends1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v1    # "groups1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    :goto_0
    return-void

    .line 1721
    :catch_0
    move-exception v2

    .line 1722
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1857
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    .line 1858
    iget v1, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    iget v2, p0, Lcom/vkcoffee/android/MenuListView;->prevStatusBarHeight:I

    if-eq v1, v2, :cond_1

    .line 1859
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1860
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1861
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1862
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1863
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1864
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    iget v2, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1866
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1867
    iget v1, p0, Lcom/vkcoffee/android/MenuListView;->statusBarHeight:I

    iput v1, p0, Lcom/vkcoffee/android/MenuListView;->prevStatusBarHeight:I

    .line 1869
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-virtual {p1, v3, v3, v3, v1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 1683
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1684
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/MenuListView$MenuListView$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1685
    sput-object p0, Lcom/vkcoffee/android/MenuListView;->lastInstance:Lcom/vkcoffee/android/MenuListView;

    .line 1686
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1687
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1688
    const-string v1, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1689
    const-string v1, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1690
    const-string v1, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1691
    const-string v1, "com.vkcoffee.android.GROUPS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1692
    const-string v1, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1693
    const-string v1, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1694
    const-string v1, "com.vkcoffee.android.USER_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1695
    const-string v1, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1696
    const-string v1, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1698
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->addAttachViewCallback(Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;)V

    .line 1699
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerService;->addProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 1700
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1701
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView;->audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v3

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v4

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v3, v4, v1}, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    .line 1703
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->activate()V

    .line 1704
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 1705
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->updateAudioAlbumArt()V

    .line 1706
    return-void

    .line 1701
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1727
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1728
    const-string v0, "vk"

    const-string v1, "on detached"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/MenuListView;->lastInstance:Lcom/vkcoffee/android/MenuListView;

    .line 1731
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioCallback:Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->removeAttachViewCallback(Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;)V

    .line 1735
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->audioProgressCallback:Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->removeProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V

    .line 1736
    return-void

    .line 1732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateUserInfo()V

    .line 1823
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f10001b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1824
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1825
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    .line 1853
    :cond_1
    :goto_0
    return-void

    .line 1827
    :cond_2
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/NewsFragment;

    if-eqz v1, :cond_3

    .line 1828
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1829
    :cond_3
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;

    if-eqz v1, :cond_4

    .line 1830
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1831
    :cond_4
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    if-eqz v1, :cond_5

    .line 1832
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1833
    :cond_5
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    if-eqz v1, :cond_6

    .line 1834
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1835
    :cond_6
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    if-eqz v1, :cond_7

    .line 1836
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1837
    :cond_7
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/PhotosFragment;

    if-eqz v1, :cond_8

    .line 1838
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1839
    :cond_8
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    if-eqz v1, :cond_9

    .line 1840
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1841
    :cond_9
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/AudioListFragment;

    if-eqz v1, :cond_a

    .line 1842
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1843
    :cond_a
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/GamesFragment;

    if-eqz v1, :cond_b

    .line 1844
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1845
    :cond_b
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/fave/FaveFragment;

    if-eqz v1, :cond_c

    .line 1846
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto :goto_0

    .line 1847
    :cond_c
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    if-eqz v1, :cond_d

    .line 1848
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 1849
    :cond_d
    instance-of v1, v0, Lcom/vkcoffee/android/fragments/SettingsListFragment;

    if-eqz v1, :cond_1

    .line 1850
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView;->setCurrentItem(I)V

    goto/16 :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 1576
    iput p1, p0, Lcom/vkcoffee/android/MenuListView;->currentItem:I

    .line 1577
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView;->adapter:Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->notifyDataSetChanged()V

    .line 1578
    return-void
.end method

.method public setExpansion(F)V
    .locals 14
    .param p1, "exp"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v13, 0x41e00000    # 28.0f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 1768
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    if-eqz v6, :cond_4

    .line 1769
    iget-object v8, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    cmpl-float v6, p1, v10

    if-nez v6, :cond_5

    const/4 v6, 0x2

    :goto_0
    invoke-virtual {v8, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setOverScrollMode(I)V

    .line 1770
    iput p1, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    .line 1771
    const/4 v2, 0x0

    .line 1772
    .local v2, "ignoreZeroOffset":Z
    iget v6, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_0

    iget v6, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_1

    :cond_0
    iget v6, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_2

    .line 1773
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->adapter:Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    invoke-virtual {v6}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->notifyDataSetChanged()V

    .line 1774
    const/4 v2, 0x1

    .line 1776
    :cond_2
    const v6, 0x3f0e38e3

    const v8, 0x3ee38e3a

    mul-float/2addr v8, p1

    add-float v4, v6, v8

    .line 1777
    .local v4, "scale":F
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$1(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1778
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$1(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1779
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$1(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const/high16 v8, 0x42a80000    # 84.0f

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v11, p1

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1780
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v13}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v11, p1

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lme/grishka/appkit/views/UsableRecyclerView;->setTranslationY(F)V

    .line 1781
    sub-float v6, p1, v12

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float v3, v6, v12

    .line 1782
    .local v3, "nameAlpha":F
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$2(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1783
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$3(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1784
    const v6, 0x3e4ccccd    # 0.2f

    div-float v6, p1, v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v1, v11, v6

    .line 1785
    .local v1, "iconsAlpha":F
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$4(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1786
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$4(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v13}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v9}, Lme/grishka/appkit/views/UsableRecyclerView;->getTranslationY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1787
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->headerViewHolder:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    invoke-static {v6}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$4(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    cmpl-float v8, p1, v11

    if-nez v8, :cond_3

    const/16 v7, 0x8

    :cond_3
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1788
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->tabletNavIcon:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1789
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView;->updateListPadding()V

    .line 1790
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->listSelector:Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;

    sub-float v7, v11, p1

    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/drawable/PaddingDrawable;->setLevel(I)Z

    .line 1791
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->playerView:Landroid/view/View;

    const v7, 0x7f10028c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x3e9559b4    # 0.2917f

    const v8, 0x3f355326    # 0.7083f

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1792
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_6

    .line 1804
    iget v6, p0, Lcom/vkcoffee/android/MenuListView;->expansion:F

    iput v6, p0, Lcom/vkcoffee/android/MenuListView;->prevExpansion:F

    .line 1806
    .end local v0    # "i":I
    .end local v1    # "iconsAlpha":F
    .end local v2    # "ignoreZeroOffset":Z
    .end local v3    # "nameAlpha":F
    .end local v4    # "scale":F
    :cond_4
    return-void

    :cond_5
    move v6, v7

    .line 1769
    goto/16 :goto_0

    .line 1793
    .restart local v0    # "i":I
    .restart local v1    # "iconsAlpha":F
    .restart local v2    # "ignoreZeroOffset":Z
    .restart local v3    # "nameAlpha":F
    .restart local v4    # "scale":F
    :cond_6
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v7, p0, Lcom/vkcoffee/android/MenuListView;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v5

    .line 1794
    .local v5, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v6, v5, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;

    if-eqz v6, :cond_8

    .line 1795
    check-cast v5, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;

    .end local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->applyExpansion()V

    .line 1792
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    .restart local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_8
    instance-of v6, v5, Lcom/vkcoffee/android/MenuListView$UserViewHolder;

    if-eqz v6, :cond_9

    .line 1797
    check-cast v5, Lcom/vkcoffee/android/MenuListView$UserViewHolder;

    .end local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5, v2}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->applyExpansion(Z)V

    goto :goto_2

    .line 1798
    .restart local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_9
    instance-of v6, v5, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;

    if-eqz v6, :cond_a

    .line 1799
    check-cast v5, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;

    .end local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;->applyExpansion()V

    goto :goto_2

    .line 1800
    .restart local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_a
    instance-of v6, v5, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    if-eqz v6, :cond_7

    .line 1801
    check-cast v5, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    .end local v5    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->applyExpansion()V

    goto :goto_2
.end method

.method public setListener(Lcom/vkcoffee/android/MenuListView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/MenuListView$Listener;

    .prologue
    .line 1764
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView;->listener:Lcom/vkcoffee/android/MenuListView$Listener;

    .line 1765
    return-void
.end method

.method public setLogicOffline()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1062
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "stayOnlinePref"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u0417\u0430\u043f\u0443\u0449\u0435\u043d \u043f\u043e\u0441\u0442\u043e\u044f\u043d\u043d\u044b\u0439 \u043e\u043d\u043b\u0430\u0439\u043d"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1126
    :goto_0
    return-void

    .line 1067
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "phantomOnlinePref"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u0417\u0430\u043f\u0443\u0449\u0435\u043d \u0444\u0430\u043d\u0442\u043e\u043d\u043c\u043d\u044b\u0439 \u043e\u043d\u043b\u0430\u0439\u043d"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1073
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "offline"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1074
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1075
    .local v1, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const-string v2, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1076
    const-string v3, "\u0412\u044b \u0442\u043e\u0447\u043d\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u0431\u044b\u0442\u044c Online?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1077
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1078
    const-string v3, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 1079
    new-instance v4, Lcom/vkcoffee/android/MenuListView$4;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/MenuListView$4;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    .line 1078
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1088
    const-string v3, "\u0422\u043e\u0447\u043d\u0435\u0435 \u043d\u0435 \u0431\u044b\u0432\u0430\u0435\u0442"

    .line 1089
    new-instance v4, Lcom/vkcoffee/android/MenuListView$5;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/MenuListView$5;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    .line 1088
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1105
    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1106
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1109
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1110
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1111
    const-string v3, "offline"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1112
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1113
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkcoffee/android/MenuListView$6;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/MenuListView$6;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1118
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1120
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u0427\u0435\u0440\u0435\u0437 45 \u0441\u0435\u043a\u0443\u043d\u0434 \u0412\u044b \u0432 offline"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1121
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto/16 :goto_0
.end method

.method public setLogicUnread()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1129
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalRead"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1131
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1132
    const-string v1, "globalRead"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1134
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1135
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041d\u0435\u0447\u0438\u0442\u0430\u043b\u043a\u0430 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1144
    :goto_0
    return-void

    .line 1137
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1139
    const-string v1, "globalRead"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1141
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041d\u0435\u0447\u0438\u0442\u0430\u043b\u043a\u0430 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0430"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1142
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto :goto_0
.end method

.method public setLogicUntyping()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1147
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    .line 1149
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 1150
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->resetCache()V

    .line 1151
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "globalType"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1154
    const-string v1, "globalType"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1156
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1157
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043d\u0430\u0431\u043e\u0440\u0430 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043d\u043e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1167
    :goto_0
    return-void

    .line 1160
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1161
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1162
    const-string v1, "globalType"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1164
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043d\u0430\u0431\u043e\u0440\u0430 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1165
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto :goto_0
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1739
    .local p1, "_friends":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    .local p2, "_groups":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/Group;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkcoffee/android/MenuListView$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkcoffee/android/MenuListView$14;-><init>(Lcom/vkcoffee/android/MenuListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1751
    return-void
.end method

.method public updateBirthdays()V
    .locals 2

    .prologue
    .line 1641
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/MenuListView$13;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/MenuListView$13;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1679
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1680
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkcoffee/android/MenuListView$15;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/MenuListView$15;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1761
    return-void
.end method

.method public updateUserInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1634
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const-string v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->userName:Ljava/lang/String;

    .line 1635
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userphoto"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->userPhoto:Ljava/lang/String;

    .line 1636
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userstatus"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView;->userStatus:Ljava/lang/String;

    .line 1637
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 1638
    return-void
.end method
