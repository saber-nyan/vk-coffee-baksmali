.class public Lcom/vkcoffee/android/fragments/messages/ChatFragment;
.super Lcom/vkcoffee/android/fragments/VKToolbarFragment;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vkcoffee/android/fragments/HomeListener;
.implements Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;
.implements Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
.implements Lcom/vkcoffee/android/stickers/StickersView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$10;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$11;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$12;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$13;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$14;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$17;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$19;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$22;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$23;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$24;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$26;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$27;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$4;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$5;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$8;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$9;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$14$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$15$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$15$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final FORWARD_RESULT:I = 0xc8

.field private static final KEY_GROUP:Ljava/lang/String; = "key_group"

.field private static final SELECT_PHOTO:I = 0x64

.field public static final TWO_E9:I = 0x77359400

.field public static activeInstance:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

.field public static chatFragmentInst:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# instance fields
.field CHAT_MEMBERS:I

.field COMMUNITY:I

.field USER_DIALOG:I

.field public actionMode:Landroid/view/ActionMode;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private actionModeCallback:Landroid/view/ActionMode$Callback;

.field private adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

.field public chatUserClickListener:Landroid/view/View$OnClickListener;

.field public chatUserLongClickListener:Landroid/view/View$OnLongClickListener;

.field private chatUsers:Landroid/util/SparseArray;

.field private contentView:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private dataLoading:Z

.field private dataLoadingDown:Z

.field private errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private group:Lcom/vkcoffee/android/api/Group;

.field private hasSeparator:Z

.field private hideSearchedBgRunnable:Ljava/lang/Runnable;

.field private isActive:Z

.field private volatile isGroupLoading:Z

.field private isShowTyping:Z

.field private items:Ljava/util/ArrayList;

.field private jumpToEndBtn:Landroid/view/View;

.field private jumpedToEnd:Z

.field private keyboardVisible:Z

.field private lastTime:I

.field private lastTypingRequest:J

.field private list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

.field private loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

.field private mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStickersView:Lcom/vkcoffee/android/stickers/StickersView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private messages:Ljava/util/ArrayList;

.field private messagesToForward:Ljava/util/ArrayList;

.field private moreAvailable:Z

.field private moreAvailableDown:Z

.field private networkError:Z

.field private offsetFromBottom:I

.field private peer:I

.field private preloadOnReady:Z

.field private preloadOnReadyDown:Z

.field private preloadedMessages:Ljava/util/ArrayList;

.field private preloadedMessagesDown:Ljava/util/ArrayList;

.field private preloading:Z

.field private preloadingDown:Z

.field private progress:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private relayoutThumbsRequested:Z

.field private restoringDraft:Z

.field public searchedMessageId:I

.field private selectedMessages:Ljava/util/ArrayList;

.field private showChatInfoClickListener:Landroid/view/View$OnClickListener;

.field private subtitle:Ljava/lang/CharSequence;

.field private subtitleTyping:Ljava/lang/CharSequence;

.field timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private titleWithoutIcon:Ljava/lang/CharSequence;

.field private typingInvalidate:Lcom/vkcoffee/android/functions/VoidF0;

.field private final typingUsers:Ljava/util/ArrayList;

.field private userNamesAcc:Landroid/util/SparseArray;

.field private usersBuf:Landroid/util/SparseArray;

.field private writeBar:Lcom/vkcoffee/android/ui/WriteBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 887
    const-class v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    const/4 v0, 0x1

    .line 893
    .local v0, "var0":Z
    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->$assertionsDisabled:Z

    .line 2920
    return-void

    .line 890
    .end local v0    # "var0":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var0":Z
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 896
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;-><init>()V

    .line 196
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    .line 232
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    .line 233
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUserLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 234
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    .line 237
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    .line 238
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoadingDown:Z

    .line 242
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hasSeparator:Z

    .line 243
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideSearchedBgRunnable:Ljava/lang/Runnable;

    .line 244
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    .line 245
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isGroupLoading:Z

    .line 246
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isShowTyping:Z

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    .line 249
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    .line 250
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->keyboardVisible:Z

    .line 251
    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lastTime:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    .line 265
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailable:Z

    .line 266
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    .line 267
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->networkError:Z

    .line 268
    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    .line 270
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReady:Z

    .line 271
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReadyDown:Z

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    .line 274
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    .line 275
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    .line 278
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$2;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 867
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->relayoutThumbsRequested:Z

    .line 868
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->restoringDraft:Z

    .line 869
    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 871
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showChatInfoClickListener:Landroid/view/View$OnClickListener;

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->titleWithoutIcon:Ljava/lang/CharSequence;

    .line 877
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/functions/VoidF0;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingInvalidate:Lcom/vkcoffee/android/functions/VoidF0;

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    .line 879
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->userNamesAcc:Landroid/util/SparseArray;

    .line 880
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    .line 3584
    const/4 v0, -0x2

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->CHAT_MEMBERS:I

    .line 3585
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->COMMUNITY:I

    .line 3586
    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->USER_DIALOG:I

    .line 897
    const v0, 0x7f03017a

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setLayout(I)V

    .line 898
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/WriteBar;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 2062
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateChatUsers(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->userNamesAcc:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showJumpButton()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1553
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsRead()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1527
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hasSeparator:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1664
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->removeSeparator()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->forward(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 2160
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateTyping()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V
    .locals 0

    .prologue
    .line 2091
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateOnline(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->rebuildItems()V

    return-void
.end method

.method static synthetic access$25(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->networkError:Z

    return-void
.end method

.method static synthetic access$26(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    return-void
.end method

.method static synthetic access$29(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->confirmAndDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/MessagesTimesList;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadData(Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoadingDown:Z

    return-void
.end method

.method static synthetic access$33(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V
    .locals 0

    .prologue
    .line 268
    iput p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    return-void
.end method

.method static synthetic access$34(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$35(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Lcom/vkcoffee/android/api/Group;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->group:Lcom/vkcoffee/android/api/Group;

    return-void
.end method

.method static synthetic access$36(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1941
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setEnableWriteBarIfDoesNotHaveSpecialMarketAttachment(Z)V

    return-void
.end method

.method static synthetic access$37(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isGroupLoading:Z

    return-void
.end method

.method static synthetic access$38(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->relayoutThumbs()V

    return-void
.end method

.method static synthetic access$39(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/stickers/KeyboardPopup;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$40(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$41(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    return v0
.end method

.method static synthetic access$42(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V

    return-void
.end method

.method static synthetic access$43(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lastTime:I

    return v0
.end method

.method static synthetic access$44(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V
    .locals 0

    .prologue
    .line 251
    iput p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lastTime:I

    return-void
.end method

.method static synthetic access$45(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->networkError:Z

    return v0
.end method

.method static synthetic access$46(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    return v0
.end method

.method static synthetic access$47(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$48(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    return-void
.end method

.method static synthetic access$49(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$50(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->prependMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$51(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    return-object v0
.end method

.method static synthetic access$52(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoadingDown:Z

    return v0
.end method

.method static synthetic access$53(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    return v0
.end method

.method static synthetic access$54(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    return v0
.end method

.method static synthetic access$55(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    return-void
.end method

.method static synthetic access$56(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReadyDown:Z

    return-void
.end method

.method static synthetic access$57(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->appendMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    return-object v0
.end method

.method static synthetic access$59(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 3633
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$60(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 3313
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendencrMessages()V

    return-void
.end method

.method static synthetic access$61(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1823
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$62(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->restoringDraft:Z

    return v0
.end method

.method static synthetic access$63(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendTypingIfNeeded()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->titleWithoutIcon:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static access$908(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I
    .locals 2
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 902
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    .line 903
    .local v0, "var1":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    .line 904
    return v0
.end method

.method static access$lambda$0(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideSearchedMessageBg()V

    .line 910
    return-void
.end method

.method static access$lambda$1(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateChatUsersPhotos()V

    .line 915
    return-void
.end method

.method static access$lambda$2(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0
    .param p0, "var0"    # Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateChatUsersPhotos()V

    .line 920
    return-void
.end method

.method private appendMessages(Ljava/util/List;)V
    .locals 4
    .param p1, "var1"    # Ljava/util/List;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    .line 924
    .local v0, "var2":Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 925
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 926
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 927
    .local v1, "var3":Ljava/util/HashSet;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {p0, p1, v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 928
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    .line 929
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 930
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    .line 931
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    if-eqz v2, :cond_0

    .line 932
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsRead()V

    .line 936
    .end local v1    # "var3":Ljava/util/HashSet;
    :cond_0
    return-void
.end method

.method public static checkImpMode()Z
    .locals 3

    .prologue
    .line 4646
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showImp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private confirmAndDelete(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Message;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 939
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080123

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 940
    .local v1, "title":Landroid/app/AlertDialog$Builder;
    new-array v0, v5, [Ljava/lang/Object;

    .line 941
    .local v0, "objArr":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0044

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 942
    const v2, 0x7f080122

    invoke-virtual {p0, v2, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0805c0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$19;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0802d7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 943
    return-void
.end method

.method private disableEncr()Z
    .locals 1

    .prologue
    .line 3634
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v0}, Lcom/vkcoffee/android/DecrEncr;->getValueCheckBox(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3635
    const/4 v0, 0x1

    .line 3637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forward(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 947
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 948
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$20;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 949
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->setSelectMode()Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 950
    return-void
.end method

.method private getMessage(I)Lcom/vkcoffee/android/Message;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 953
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 954
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 955
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Message;

    .line 956
    .local v1, "m":Lcom/vkcoffee/android/Message;
    iget v2, v1, Lcom/vkcoffee/android/Message;->id:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method private getOnlineString(I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "var1"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 966
    if-lez p1, :cond_1

    .line 967
    const v0, 0x7f080322

    .line 972
    .local v0, "var2":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, "var3":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq p1, v8, :cond_0

    .line 974
    new-instance v2, Landroid/text/SpannableStringBuilder;

    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "var3":Ljava/lang/String;
    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 975
    .local v2, "var3":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 976
    .local v3, "var4":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020175

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 977
    .local v4, "var5":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 978
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v4, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v5, v7, v8, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v2

    .line 979
    check-cast v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "\u00a0"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v5, v2

    .line 980
    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v1, v2

    .line 983
    .end local v2    # "var3":Landroid/text/SpannableStringBuilder;
    .end local v3    # "var4":Landroid/text/Spannable;
    .end local v4    # "var5":Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    .line 969
    .end local v0    # "var2":I
    :cond_1
    const v0, 0x7f08031d

    .restart local v0    # "var2":I
    goto :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    .line 3475
    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    .line 3476
    .local v3, "proj":[Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    .local v0, "loader":Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v8

    .line 3478
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 3479
    .local v7, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3480
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3481
    .local v10, "result":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3482
    const-string v1, ".png"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3495
    .end local v0    # "loader":Landroid/content/CursorLoader;
    .end local v3    # "proj":[Ljava/lang/String;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 3484
    .restart local v0    # "loader":Landroid/content/CursorLoader;
    .restart local v3    # "proj":[Ljava/lang/String;
    .restart local v7    # "column_index":I
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3485
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 3487
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ERR: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3488
    const-string v10, "ERRR"

    goto :goto_0

    .line 3490
    .end local v0    # "loader":Landroid/content/CursorLoader;
    .end local v3    # "proj":[Ljava/lang/String;
    .end local v7    # "column_index":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3491
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3492
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 3494
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ERR Catch RealURI: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3495
    const-string v10, "ERRR"

    goto :goto_0
.end method

.method private hideJumpButton()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 987
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    .line 988
    .local v1, "var2":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 989
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 990
    .local v0, "var1":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "translationY"

    new-array v4, v7, [F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 991
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 992
    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$3;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1000
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1003
    .end local v0    # "var1":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private hideSearchedMessageBg()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->setSearchedViewBackgroundColor(I)V

    .line 1007
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    .line 1008
    return-void
.end method

.method private jumpToEnd()V
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-nez v0, :cond_1

    .line 1012
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->smoothScrollToBottom()V

    .line 1013
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V

    .line 1016
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataUp(Z)V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    goto :goto_0
.end method

.method static lambda$forward$433(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/Message;)I
    .locals 3
    .param p0, "var0"    # Lcom/vkcoffee/android/Message;
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 1025
    iget v1, p0, Lcom/vkcoffee/android/Message;->time:I

    iget v2, p1, Lcom/vkcoffee/android/Message;->time:I

    if-le v1, v2, :cond_0

    .line 1026
    const/4 v0, 0x1

    .line 1031
    .local v0, "var2":B
    :goto_0
    return v0

    .line 1028
    .end local v0    # "var2":B
    :cond_0
    const/4 v0, -0x1

    .restart local v0    # "var2":B
    goto :goto_0
.end method

.method private loadData(Z)V
    .locals 1
    .param p1, "var1"    # Z

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadGroupInfo()V

    .line 1036
    if-eqz p1, :cond_0

    .line 1037
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataUp(Z)V

    .line 1042
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataDown()V

    goto :goto_0
.end method

.method private loadDataDown()V
    .locals 6

    .prologue
    .line 1135
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoadingDown:Z

    .line 1136
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "msg_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1138
    .local v1, "var2":I
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    if-eqz v3, :cond_0

    .line 1139
    const/16 v0, 0x1e

    .line 1144
    .local v0, "var1":B
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    .line 1145
    .local v2, "var3":I
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1146
    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int v4, v2, v0

    new-instance v5, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$4;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-static {v3, v4, v0, v1, v5}, Lcom/vkcoffee/android/MessagesImportant;->getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    .line 1231
    :goto_1
    return-void

    .line 1141
    .end local v0    # "var1":B
    .end local v2    # "var3":I
    :cond_0
    const/16 v0, 0x3c

    .restart local v0    # "var1":B
    goto :goto_0

    .line 1189
    .restart local v2    # "var3":I
    :cond_1
    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int v4, v2, v0

    new-instance v5, Lcom/vkcoffee/android/fragments/messages/ChatFragment$5;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$5;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-static {v3, v4, v0, v1, v5}, Lcom/vkcoffee/android/data/Messages;->getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    goto :goto_1
.end method

.method private loadDataUp(Z)V
    .locals 9
    .param p1, "var1"    # Z

    .prologue
    .line 1373
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    .line 1374
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1375
    .local v0, "var2":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "msg_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1377
    .local v2, "var4":I
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    if-eqz v7, :cond_3

    .line 1378
    const/16 v1, 0x1e

    .line 1384
    .local v1, "var3":B
    :goto_0
    if-nez v0, :cond_4

    if-nez p1, :cond_0

    if-lez v2, :cond_4

    .line 1385
    :cond_0
    move v0, v2

    .line 1386
    if-nez v2, :cond_1

    .line 1387
    const/4 v0, -0x1

    .line 1390
    :cond_1
    const/16 v6, -0x14

    .line 1391
    .local v6, "var8":B
    move v3, v0

    .line 1392
    .local v3, "var5":I
    move v0, v6

    .line 1404
    .end local v6    # "var8":B
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1405
    .local v4, "var6":J
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1406
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    new-instance v8, Lcom/vkcoffee/android/fragments/messages/ChatFragment$6;

    invoke-direct {v8, p0, p1, v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$6;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZJ)V

    invoke-static {v7, v0, v1, v3, v8}, Lcom/vkcoffee/android/MessagesImportant;->getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    .line 1525
    :goto_2
    return-void

    .line 1380
    .end local v1    # "var3":B
    .end local v3    # "var5":I
    .end local v4    # "var6":J
    :cond_3
    const/16 v1, 0x3c

    .restart local v1    # "var3":B
    goto :goto_0

    .line 1393
    :cond_4
    if-nez p1, :cond_5

    .line 1394
    const/4 v0, 0x0

    .line 1395
    move v3, v2

    .line 1396
    .restart local v3    # "var5":I
    goto :goto_1

    .line 1397
    .end local v3    # "var5":I
    :cond_5
    move v3, v2

    .line 1398
    .restart local v3    # "var5":I
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-lez v7, :cond_2

    .line 1399
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v0, v7, v8

    .line 1400
    move v3, v2

    goto :goto_1

    .line 1466
    .restart local v4    # "var6":J
    :cond_6
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    new-instance v8, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;

    invoke-direct {v8, p0, p1, v4, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$7;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;ZJ)V

    invoke-static {v7, v0, v1, v3, v8}, Lcom/vkcoffee/android/data/Messages;->getHistory(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V

    goto :goto_2
.end method

.method private loadFwdUsers(Ljava/util/Collection;)V
    .locals 1
    .param p1, "var1"    # Ljava/util/Collection;

    .prologue
    .line 1528
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$21;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 1529
    return-void
.end method

.method private loadGroupInfo()V
    .locals 6

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1533
    .local v0, "id":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->group:Lcom/vkcoffee/android/api/Group;

    if-nez v1, :cond_1

    const-wide v2, -0x3e22329b00000000L    # -2.0E9

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    int-to-double v4, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isGroupLoading:Z

    if-nez v1, :cond_1

    .line 1534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isGroupLoading:Z

    .line 1535
    if-gez v0, :cond_0

    .line 1536
    neg-int v0, v0

    .line 1538
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsGetById;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/api/groups/GroupsGetById;-><init>(I)V

    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$8;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 1549
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1551
    :cond_1
    return-void
.end method

.method private markAsRead()V
    .locals 6

    .prologue
    .line 1554
    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isMarkedAsRead(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    const/4 v0, 0x0

    .line 1560
    .local v0, "var1":I
    const/4 v2, 0x0

    .local v2, "var3":I
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1576
    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getPeerID()I

    move-result v4

    invoke-static {v4, v0}, Lcom/vkcoffee/android/data/Messages;->markAsRead(II)V

    goto :goto_0

    .line 1561
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    .line 1562
    .local v3, "var4":Lcom/vkcoffee/android/Message;
    move v1, v0

    .line 1563
    .local v1, "var2":I
    iget-boolean v4, v3, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v4, :cond_3

    .line 1564
    move v1, v0

    .line 1565
    iget-boolean v4, v3, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v4, :cond_3

    .line 1566
    move v1, v0

    .line 1567
    iget v4, v3, Lcom/vkcoffee/android/Message;->id:I

    if-ge v0, v4, :cond_3

    .line 1568
    iget v1, v3, Lcom/vkcoffee/android/Message;->id:I

    .line 1573
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1560
    move v0, v1

    goto :goto_1
.end method

.method public static markAsReadTOOO(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2765
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$14;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$14;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesMarkAsRead;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 2780
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 2781
    return-void
.end method

.method private markAsReadTo(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "peer"    # I

    .prologue
    .line 2746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2747
    .local v0, "array":Ljava/util/ArrayList;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2749
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2759
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2760
    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsReadTOOO(Ljava/util/ArrayList;)V

    .line 2763
    :cond_1
    return-void

    .line 2750
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Message;

    .line 2751
    .local v2, "message":Lcom/vkcoffee/android/Message;
    iget-boolean v3, v2, Lcom/vkcoffee/android/Message;->out:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v3, :cond_0

    .line 2752
    iget v3, v2, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2753
    iget v3, v2, Lcom/vkcoffee/android/Message;->id:I

    if-ne v3, p1, :cond_0

    goto :goto_0
.end method

.method public static offImpMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4643
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showImp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showImp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4644
    :cond_0
    return-void
.end method

.method public static onImpMode()V
    .locals 3

    .prologue
    .line 4640
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showImp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4641
    return-void
.end method

.method private prependMessages(Ljava/util/List;)V
    .locals 14
    .param p1, "var1"    # Ljava/util/List;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1583
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    .line 1584
    .local v7, "var8":Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    .line 1585
    const/4 v1, -0x1

    .line 1586
    .local v1, "var2":I
    iget-object v9, v7, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->getFirstVisiblePosition()I

    move-result v3

    .line 1588
    .local v3, "var4":I
    if-nez v3, :cond_3

    .line 1589
    move v2, v3

    .line 1590
    .local v2, "var3":I
    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getChildCount()I

    move-result v9

    if-le v9, v13, :cond_0

    .line 1591
    add-int/lit8 v2, v3, 0x2

    .line 1592
    invoke-virtual {v7, v13}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1608
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1609
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1610
    .local v6, "var7":Ljava/util/HashSet;
    invoke-static {p0, p1, v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1611
    .local v0, "var10":Ljava/util/ArrayList;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1612
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    move-result v5

    .line 1613
    .local v5, "var6":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 1614
    const/4 v4, 0x0

    .line 1615
    .local v4, "var5":Z
    const/4 v3, 0x0

    .line 1617
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "var9":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1624
    if-nez v4, :cond_1

    .line 1625
    iget-object v9, v7, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v11, v2, v5

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10, v1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->setSelectionFromTop(II)V

    .line 1628
    :cond_1
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    .line 1631
    .end local v0    # "var10":Ljava/util/ArrayList;
    .end local v1    # "var2":I
    .end local v2    # "var3":I
    .end local v3    # "var4":I
    .end local v4    # "var5":Z
    .end local v5    # "var6":I
    .end local v6    # "var7":Ljava/util/HashSet;
    .end local v8    # "var9":Ljava/util/Iterator;
    :cond_2
    return-void

    .line 1594
    .restart local v1    # "var2":I
    .restart local v3    # "var4":I
    :cond_3
    if-ne v3, v11, :cond_4

    .line 1595
    move v2, v3

    .line 1596
    .restart local v2    # "var3":I
    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getChildCount()I

    move-result v9

    if-le v9, v12, :cond_0

    .line 1597
    add-int/lit8 v2, v3, 0x1

    .line 1598
    invoke-virtual {v7, v12}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1600
    goto :goto_0

    .line 1601
    .end local v2    # "var3":I
    :cond_4
    move v2, v3

    .line 1602
    .restart local v2    # "var3":I
    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getChildCount()I

    move-result v9

    if-le v9, v11, :cond_0

    .line 1603
    invoke-virtual {v7, v10}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1604
    move v2, v3

    goto :goto_0

    .line 1618
    .restart local v0    # "var10":Ljava/util/ArrayList;
    .restart local v4    # "var5":Z
    .restart local v5    # "var6":I
    .restart local v6    # "var7":Ljava/util/HashSet;
    .restart local v8    # "var9":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v9, v9, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_6

    .line 1619
    const/4 v4, 0x1

    .line 1620
    iget-object v9, v7, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    add-int/lit8 v10, v3, 0x1

    const/high16 v11, 0x42a00000    # 80.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->setSelectionFromTop(II)V

    .line 1617
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private rebuildItems()V
    .locals 3

    .prologue
    .line 1634
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1635
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1636
    .local v0, "var1":Ljava/util/HashSet;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-static {p0, v2, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1637
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    .line 1638
    return-void
.end method

.method private relayoutThumbs()V
    .locals 9

    .prologue
    .line 1641
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getContentWidth()I

    move-result v7

    const/high16 v8, 0x43af0000    # 350.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1648
    .local v2, "var3":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "var6":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1660
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 1661
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->relayoutThumbsRequested:Z

    .line 1662
    return-void

    .line 1649
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 1650
    .local v6, "var7":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    const/high16 v7, 0x42fc0000    # 126.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    .line 1651
    .local v4, "var5":I
    iget v1, v6, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    .line 1652
    .local v1, "var2":I
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    .line 1653
    .local v3, "var4":I
    iget v7, v6, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    if-nez v7, :cond_1

    .line 1654
    const/4 v0, 0x0

    .line 1648
    .local v0, "var1":I
    :goto_1
    sub-int v7, v2, v4

    mul-int v8, v1, v3

    sub-int/2addr v7, v8

    sub-int/2addr v7, v0

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v2, v8}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    goto :goto_0

    .line 1656
    .end local v0    # "var1":I
    :cond_1
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    .restart local v0    # "var1":I
    goto :goto_1
.end method

.method private removeSeparator()V
    .locals 3

    .prologue
    .line 1665
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1667
    .local v0, "var1":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1676
    :goto_0
    return-void

    .line 1668
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v1, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1669
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1670
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hasSeparator:Z

    .line 1671
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    goto :goto_0
.end method

.method private restoreDraft()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1679
    sget-boolean v6, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-nez v6, :cond_0

    .line 1680
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1681
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 1682
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "drafts"

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1683
    .local v5, "prefs":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1684
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "text"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1685
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "attach"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1687
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attach"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1688
    .local v4, "is":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1689
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_3

    .line 1700
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "text"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1701
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attach"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1704
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 1690
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v1

    .line 1691
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v1, Lcom/vkcoffee/android/attachments/MarketAttachment;

    if-eqz v6, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/vkcoffee/android/attachments/MarketAttachment;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/vkcoffee/android/attachments/MarketAttachment;->canEdit:Z

    if-eqz v6, :cond_5

    .line 1692
    :cond_4
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v6, v1}, Lcom/vkcoffee/android/ui/WriteBar;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 1689
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1694
    :cond_5
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1697
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private retryFailed(Lcom/vkcoffee/android/Message;)V
    .locals 11
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 1707
    iget v6, p1, Lcom/vkcoffee/android/Message;->id:I

    if-gtz v6, :cond_1

    .line 1708
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1709
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    .local v1, "var3":Ljava/util/ArrayList;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1712
    .local v0, "var2":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1719
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1720
    iget v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    iget-object v7, p1, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    iget-object v8, p1, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    iget-object v9, p1, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    iget v10, p1, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v6, v7, v8, v9, v10}, Lcom/vkcoffee/android/data/Messages;->send(ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vkcoffee/android/Message;

    move-result-object v4

    .line 1721
    .local v4, "var6":Lcom/vkcoffee/android/Message;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    .local v3, "var5":Ljava/util/ArrayList;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1725
    .local v5, "var7":Ljava/util/HashSet;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {p0, v3, v5}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1726
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    .line 1727
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    .line 1728
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 1731
    .end local v0    # "var2":Ljava/util/Iterator;
    .end local v1    # "var3":Ljava/util/ArrayList;
    .end local v3    # "var5":Ljava/util/ArrayList;
    .end local v4    # "var6":Lcom/vkcoffee/android/Message;
    .end local v5    # "var7":Ljava/util/HashSet;
    :cond_1
    return-void

    .line 1713
    .restart local v0    # "var2":Ljava/util/Iterator;
    .restart local v1    # "var3":Ljava/util/ArrayList;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 1714
    .local v2, "var4":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v6, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    iget v7, p1, Lcom/vkcoffee/android/Message;->id:I

    if-ne v6, v7, :cond_0

    .line 1715
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveDraft()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1734
    sget-boolean v7, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-eqz v7, :cond_5

    .line 1735
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    .line 1736
    .local v0, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "drafts"

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1737
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 1738
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "text"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "attach"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1760
    :goto_0
    return-void

    .line 1741
    :cond_1
    const/4 v6, 0x0

    .line 1742
    .local v6, "satts":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1744
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1745
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1746
    .local v4, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1747
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1748
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1751
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1755
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :cond_2
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "text"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v9}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1756
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_3

    .line 1757
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attach"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1759
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1749
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v7, v4}, Lcom/vkcoffee/android/attachments/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1752
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 1762
    .end local v0    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "satts":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
.end method

.method private scrollToNewMessage()V
    .locals 3

    .prologue
    .line 1767
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-nez v1, :cond_1

    .line 1768
    const/4 v0, 0x0

    .line 1773
    .local v0, "var1":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 1774
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "var1":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 1775
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->scrollToPosition(I)V

    .line 1781
    :cond_0
    :goto_1
    return-void

    .line 1770
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .restart local v0    # "var1":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    goto :goto_0

    .line 1777
    .end local v0    # "var1":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->smoothScrollToBottom()V

    goto :goto_1
.end method

.method private sendAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V
    .locals 9
    .param p1, "var1"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1784
    sget-boolean v3, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-nez v3, :cond_1

    .line 1785
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1787
    :cond_1
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v0, "var2":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const-string v4, ""

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4, v0, v5, v6}, Lcom/vkcoffee/android/data/Messages;->send(ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vkcoffee/android/Message;

    move-result-object v1

    .line 1791
    .local v1, "var3":Lcom/vkcoffee/android/Message;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-eqz v3, :cond_3

    .line 1793
    iput v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    .line 1794
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    .line 1795
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1796
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1797
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1798
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1799
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1800
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1801
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1802
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1803
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V

    .line 1804
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    invoke-direct {p0, v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataUp(Z)V

    .line 1806
    iput-boolean v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    .line 1809
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1810
    .local v2, "var4":Ljava/util/HashSet;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1811
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    .line 1812
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->scrollToNewMessage()V

    .line 1813
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 1814
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    .line 1815
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hasSeparator:Z

    if-eqz v3, :cond_4

    .line 1816
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->removeSeparator()V

    .line 1821
    .end local v0    # "var2":Ljava/util/ArrayList;
    .end local v1    # "var3":Lcom/vkcoffee/android/Message;
    .end local v2    # "var4":Ljava/util/HashSet;
    :cond_4
    return-void
.end method

.method private sendMessage()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1824
    sget-boolean v8, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-nez v8, :cond_1

    .line 1825
    :cond_0
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1827
    :cond_1
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_7

    :cond_2
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1828
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1829
    .local v1, "var2":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    .line 1830
    .local v0, "var1":Ljava/util/ArrayList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1831
    .local v2, "var3":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1833
    .local v3, "var4":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1849
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1850
    :cond_4
    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v8, v1, v0, v2, v12}, Lcom/vkcoffee/android/data/Messages;->send(ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vkcoffee/android/Message;

    move-result-object v5

    .line 1851
    .local v5, "var6":Lcom/vkcoffee/android/Message;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/WriteBar;->clearAttachments()V

    .line 1854
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1855
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "send msg, offset="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-eqz v8, :cond_5

    .line 1857
    iput v12, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    .line 1858
    iput-boolean v12, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    .line 1859
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1860
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1861
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1862
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1863
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v8, v12}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1864
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1865
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v8, v14}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1866
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v8, v14}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1867
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V

    .line 1868
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    invoke-direct {p0, v13}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataUp(Z)V

    .line 1870
    iput-boolean v13, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    .line 1873
    :cond_5
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1874
    .local v6, "var7":Ljava/util/HashSet;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {p0, v9, v6}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->buildItems(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1875
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->fixTimes(Ljava/util/List;)I

    .line 1876
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->scrollToNewMessage()V

    .line 1877
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hasSeparator:Z

    if-eqz v8, :cond_6

    .line 1878
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->removeSeparator()V

    .line 1881
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 1882
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadFwdUsers(Ljava/util/Collection;)V

    .line 1887
    .end local v0    # "var1":Ljava/util/ArrayList;
    .end local v1    # "var2":Ljava/lang/String;
    .end local v2    # "var3":Ljava/util/ArrayList;
    .end local v3    # "var4":Ljava/util/Iterator;
    .end local v5    # "var6":Lcom/vkcoffee/android/Message;
    .end local v6    # "var7":Ljava/util/HashSet;
    :cond_7
    return-void

    .line 1834
    .restart local v0    # "var1":Ljava/util/ArrayList;
    .restart local v1    # "var2":Ljava/lang/String;
    .restart local v2    # "var3":Ljava/util/ArrayList;
    .restart local v3    # "var4":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1835
    .local v4, "var5":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v8, v4, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    if-eqz v8, :cond_9

    .line 1836
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1837
    check-cast v4, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    .end local v4    # "var5":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v8, v4, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1841
    .restart local v4    # "var5":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_9
    instance-of v8, v4, Lcom/vkcoffee/android/attachments/MarketAttachment;

    if-eqz v8, :cond_3

    move-object v7, v4

    .line 1842
    check-cast v7, Lcom/vkcoffee/android/attachments/MarketAttachment;

    .line 1843
    .local v7, "var8":Lcom/vkcoffee/android/attachments/MarketAttachment;
    iget-boolean v8, v7, Lcom/vkcoffee/android/attachments/MarketAttachment;->canEdit:Z

    if-nez v8, :cond_3

    .line 1844
    const-string v8, "market_contact"

    invoke-static {v8}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string v9, "item_id"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget v11, v11, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget v11, v11, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    const-string v9, "action"

    const-string v10, "write"

    invoke-virtual {v8, v9, v10}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    goto/16 :goto_0
.end method

.method private sendTypingIfNeeded()V
    .locals 4

    .prologue
    .line 1890
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const v1, 0x77359400

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isSetTyping(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lastTypingRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lastTypingRequest:J

    .line 1895
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesSetActivity;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSetActivity;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/messages/MessagesSetActivity;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method private sendencrMessages()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3329
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3330
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendMessage()V

    .line 3343
    :cond_0
    :goto_0
    return-void

    .line 3333
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/vkcoffee/android/DecrEncr;->canTransform(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3334
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v0}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3335
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v1, v3, v2}, Lcom/vkcoffee/android/DecrEncr;->transformText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 3342
    :goto_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendMessage()V

    goto :goto_0

    .line 3337
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/DecrEncr;->transformText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setDialogIcon(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    .line 1902
    if-nez p1, :cond_3

    .line 1903
    const/4 v4, 0x0

    .line 1908
    .local v4, "var6":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-eqz v5, :cond_0

    .line 1909
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setGraffitiPhoto(Ljava/lang/String;)V

    .line 1912
    :cond_0
    const/4 v0, 0x0

    .line 1913
    .local v0, "var2":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v3

    .line 1914
    .local v3, "var5":Landroid/support/v7/widget/Toolbar;
    if-eqz v3, :cond_2

    .line 1917
    if-eqz v4, :cond_4

    .line 1918
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v4}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v1

    .line 1919
    .local v1, "var3":Z
    move v0, v1

    .line 1920
    if-eqz v1, :cond_4

    .line 1921
    new-instance v5, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1934
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    .line 1935
    new-instance v5, Ljava/lang/Thread;

    invoke-static {p0, v4, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1939
    .end local v1    # "var3":Z
    :cond_2
    return-void

    .line 1905
    .end local v0    # "var2":Z
    .end local v3    # "var5":Landroid/support/v7/widget/Toolbar;
    .end local v4    # "var6":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "var6":Ljava/lang/String;
    goto :goto_0

    .line 1926
    .restart local v0    # "var2":Z
    .restart local v3    # "var5":Landroid/support/v7/widget/Toolbar;
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1927
    .local v2, "var4":Landroid/graphics/drawable/Drawable;
    move v1, v0

    .line 1928
    .restart local v1    # "var3":Z
    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 1929
    new-instance v5, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "var4":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1930
    move v1, v0

    goto :goto_1
.end method

.method private setEnableWriteBarIfDoesNotHaveSpecialMarketAttachment(Z)V
    .locals 6
    .param p1, "var1"    # Z

    .prologue
    .line 1942
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-eqz v4, :cond_0

    .line 1943
    if-eqz p1, :cond_1

    .line 1944
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 1974
    .end local p1    # "var1":Z
    :cond_0
    :goto_0
    return-void

    .line 1946
    .restart local p1    # "var1":Z
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    .line 1947
    .local v2, "var4":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 1948
    .local v1, "var3":Z
    const/4 v0, 0x0

    .line 1951
    .end local p1    # "var1":Z
    .local v0, "var2":I
    :goto_1
    move p1, v1

    .line 1952
    .local p1, "var1":I
    if-nez v2, :cond_3

    .line 1970
    .end local p1    # "var1":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v4, p1}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    goto :goto_0

    .line 1956
    .restart local p1    # "var1":I
    :cond_3
    move p1, v1

    .line 1957
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1961
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1962
    .local v3, "var5":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v4, v3, Lcom/vkcoffee/android/attachments/MarketAttachment;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/vkcoffee/android/attachments/MarketAttachment;

    .end local v3    # "var5":Lcom/vkcoffee/android/attachments/Attachment;
    iget-boolean v4, v3, Lcom/vkcoffee/android/attachments/MarketAttachment;->canEdit:Z

    if-nez v4, :cond_4

    .line 1963
    const/4 p1, 0x1

    .line 1964
    .local p1, "var1":Z
    goto :goto_2

    .line 1967
    .local p1, "var1":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1950
    goto :goto_1
.end method

.method private showJumpButton()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1977
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    .line 1978
    .local v0, "var1":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1979
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1981
    .local v1, "var2":Landroid/animation/AnimatorSet;
    new-array v2, v5, [Landroid/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "translationY"

    new-array v4, v5, [F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1982
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1983
    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$9;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1991
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1994
    .end local v1    # "var2":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 1981
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showMessageOptions(Lcom/vkcoffee/android/Message;)V
    .locals 7
    .param p1, "var1"    # Lcom/vkcoffee/android/Message;

    .prologue
    .line 1997
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    .local v3, "var3":Ljava/util/ArrayList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2001
    .local v2, "var2":Ljava/util/ArrayList;
    iget-object v4, p1, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkcoffee/android/DecrEncr;->checkCoffeeEncryption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2002
    const-string v4, "\u0420\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2003
    const-string v4, "encr"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    :cond_0
    iget-object v4, p1, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-static {v4}, Lcom/vkcoffee/android/DecrEncr;->checkPinCodeEncryption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2006
    const-string v4, "\u0420\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u043e \u043a\u043b\u044e\u0447\u0443"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    const-string v4, "encrPin"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    :cond_1
    iget-boolean v4, p1, Lcom/vkcoffee/android/Message;->sendFailed:Z

    if-nez v4, :cond_7

    .line 2012
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2013
    const v4, 0x7f080434

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    const-string v4, "reply"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    :cond_2
    const v4, 0x7f0802b1

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    const-string v4, "forward"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2022
    :goto_0
    const v4, 0x7f080102

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    const-string v4, "copy"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2025
    const-string v4, "\u041e\u0442\u043c\u0435\u0442\u0438\u0442\u044c \u0432\u0430\u0436\u043d\u044b\u043c"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    const-string v4, "markImp"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    const v4, 0x7f080119

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    const-string v4, "delete"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2031
    const-string v4, "\u0421\u043d\u044f\u0442\u044c \u043e\u0442\u043c\u0435\u0442\u043a\u0443"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    const-string v4, "deMarkImp"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    :cond_4
    iget v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-static {v4}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isMarkedAsRead(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p1, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v4, :cond_5

    .line 2037
    const-string v4, "\u041f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0434\u043e \u0442\u0435\u043a\u0443\u0449\u0435\u0433\u043e \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    const-string v4, "read"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2040
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2042
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget v5, p1, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    iget-object v1, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 2043
    .local v1, "tst":Ljava/lang/String;
    const-string v4, "\u0421\u0434\u0435\u043b\u0430\u0442\u044c \u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 2045
    const-string v4, "intr"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2052
    .end local v1    # "tst":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0802aa

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-static {p0, v2, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$18;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2053
    return-void

    .line 2019
    :cond_7
    const v4, 0x7f08044e

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    const-string v4, "retry"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " sender; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private smoothScrollToBottom()V
    .locals 2

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->smoothScrollToPosition(I)V

    .line 2060
    :cond_0
    return-void
.end method

.method private upGraffiti(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 10
    .param p1, "graffitiBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3452
    if-eqz p1, :cond_0

    .line 3454
    :try_start_0
    const-string v0, "GRAFFITY"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; getRealPathFromURI() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3456
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u0442\u044c \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435, \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u043e\u043d\u043e \u043d\u0435 \u0438\u043c\u0435\u0435\u0442 \u0440\u0430\u0441\u0448\u0438\u0440\u0435\u043d\u0438\u044f .png"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3471
    :cond_0
    :goto_0
    return-void

    .line 3458
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3459
    .local v9, "output":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3460
    .local v8, "fos":Ljava/io/FileOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3461
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 3462
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 3464
    const-string v0, "GRAFFITY"

    const-string v1, "GOGOGO"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3466
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "output":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 3467
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "GRAFFITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exp upGrf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateChatUsers(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .prologue
    const v1, 0x77359400

    .line 2063
    if-eqz p1, :cond_0

    .line 2064
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/vkcoffee/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 2067
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int/2addr v0, v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$14;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Messages;->getChatUsers(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V

    .line 2068
    return-void
.end method

.method private updateChatUsersPhotos()V
    .locals 4

    .prologue
    .line 2071
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2073
    .local v1, "var2":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2084
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 2085
    return-void

    .line 2074
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 2075
    .local v0, "var1":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    if-lez v2, :cond_2

    .line 2076
    iget v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getMessage(I)Lcom/vkcoffee/android/Message;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;->processServiceAction(Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)[I

    .line 2079
    :cond_2
    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget v3, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sender:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2080
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget v3, v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sender:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateOnline(I)V
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 2092
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getOnlineString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2093
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 2133
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 2158
    return-void
.end method

.method private updateTyping()V
    .locals 7

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2163
    const/4 v6, 0x1

    .line 2168
    .local v6, "var1":Z
    :goto_0
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showTyping(Z)V

    .line 2169
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingInvalidate:Lcom/vkcoffee/android/functions/VoidF0;

    const/4 v5, -0x1

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/ViewUtils;->getTypingText(Landroid/content/Context;ILjava/util/List;Landroid/util/SparseArray;Lcom/vkcoffee/android/functions/VoidF0;I)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitleTyping:Ljava/lang/CharSequence;

    .line 2170
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isShowTyping:Z

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitleTyping:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 2174
    :cond_0
    return-void

    .line 2165
    .end local v6    # "var1":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "var1":Z
    goto :goto_0
.end method


# virtual methods
.method public choicePick()V
    .locals 2

    .prologue
    .line 3445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3446
    .local v0, "photoPickerIntent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3447
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3449
    return-void
.end method

.method public getChatUser(I)Lcom/vkcoffee/android/UserProfile;
    .locals 4
    .param p1, "var1"    # I

    .prologue
    .line 2178
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 2190
    .local v0, "var2":Lcom/vkcoffee/android/UserProfile;
    :goto_0
    return-object v0

    .line 2180
    .end local v0    # "var2":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2181
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 2182
    .restart local v0    # "var2":Lcom/vkcoffee/android/UserProfile;
    goto :goto_0

    .line 2183
    .end local v0    # "var2":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 2184
    .restart local v0    # "var2":Lcom/vkcoffee/android/UserProfile;
    const-string v1, "..."

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 2185
    const-string v1, "..."

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 2186
    const-string v1, "..."

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 2187
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getChatUser: unknown user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 2195
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 2196
    const/4 v0, 0x0

    .line 2201
    .local v0, "var1":I
    :goto_0
    return v0

    .line 2198
    .end local v0    # "var1":I
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    .restart local v0    # "var1":I
    goto :goto_0
.end method

.method public getPeerID()I
    .locals 1

    .prologue
    .line 2205
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    return v0
.end method

.method public getUserName(I)Ljava/lang/String;
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->userNamesAcc:Landroid/util/SparseArray;

    const-string v1, "..."

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->hide()V

    .line 2217
    :cond_0
    return-void
.end method

.method public isJumpedToEnd()Z
    .locals 1

    .prologue
    .line 2220
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpedToEnd:Z

    return v0
.end method

.method public isSelected(I)Z
    .locals 3
    .param p1, "var1"    # I

    .prologue
    .line 2224
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2228
    .local v1, "var3":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Message;

    iget v2, v2, Lcom/vkcoffee/android/Message;->id:I

    if-ne v2, p1, :cond_0

    .line 2233
    const/4 v0, 0x1

    .line 2241
    .local v0, "var2":Z
    :goto_0
    return v0

    .line 2237
    .end local v0    # "var2":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_0
.end method

.method public isShowingTime()Z
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->isTimeVisible()Z

    move-result v0

    return v0
.end method

.method lambda$confirmAndDelete$432(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # Landroid/content/DialogInterface;
    .param p3, "var3"    # I

    .prologue
    .line 2250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2251
    .local v2, "var6":Ljava/util/ArrayList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2253
    .local v0, "var4":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2257
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/vkcoffee/android/data/Messages;->delete(Ljava/util/List;Z)V

    .line 2258
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2259
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "var1":Ljava/util/ArrayList;
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2260
    .restart local p1    # "var1":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2262
    .local v1, "var5":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2269
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2270
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 2271
    return-void

    .line 2254
    .end local v1    # "var5":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2263
    .restart local v1    # "var5":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 2264
    .local v3, "var7":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v4, v3, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2265
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method lambda$loadFwdUsers$435(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 2275
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$22;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2276
    return-void
.end method

.method lambda$new$407()V
    .locals 1

    .prologue
    .line 2280
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->invalidateViewCascade(Landroid/view/View;)V

    .line 2281
    return-void
.end method

.method lambda$new$408(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    const v3, 0x77359400

    .line 2285
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2286
    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-ge v1, v3, :cond_1

    .line 2287
    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const v2, -0x77359400

    if-lt v1, v2, :cond_0

    .line 2288
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 2299
    :cond_0
    :goto_0
    return-void

    .line 2291
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2292
    .local v0, "var2":Landroid/os/Bundle;
    const-string v1, "id"

    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2293
    const-string v1, "admin"

    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Lcom/vkcoffee/android/data/Messages;->getChatAdmin(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2294
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2295
    const-class v1, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0
.end method

.method lambda$new$409(Landroid/view/View;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 2303
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2304
    .local v0, "var2":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2306
    .local v1, "var3":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2313
    return-void

    .line 2307
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Message;

    .line 2308
    .local v2, "var4":Lcom/vkcoffee/android/Message;
    iget v3, v2, Lcom/vkcoffee/android/Message;->id:I

    if-ne v3, v0, :cond_0

    .line 2309
    new-instance v3, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v4, v2, Lcom/vkcoffee/android/Message;->sender:I

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method lambda$new$410(Landroid/view/View;)Z
    .locals 14
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2318
    .local v0, "var2":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2320
    .local v2, "var4":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2337
    return v13

    .line 2321
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    .line 2322
    .local v3, "var5":Lcom/vkcoffee/android/Message;
    iget v8, v3, Lcom/vkcoffee/android/Message;->id:I

    if-ne v8, v0, :cond_0

    .line 2323
    iget v1, v3, Lcom/vkcoffee/android/Message;->sender:I

    .line 2324
    .local v1, "var3":I
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    invoke-static {v8, v1}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2325
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 2326
    .local v6, "var8":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v6, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 2327
    .local v4, "var6":Landroid/widget/Toast;
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 2328
    .local v7, "var9":[I
    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2329
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2330
    .local v5, "var7":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2331
    const/16 v8, 0x33

    aget v9, v7, v12

    iget v10, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    aget v10, v7, v13

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-virtual {v4, v8, v9, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 2332
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method lambda$null$411(Landroid/graphics/Bitmap;Landroid/support/v7/widget/Toolbar;)V
    .locals 4
    .param p1, "var1"    # Landroid/graphics/Bitmap;
    .param p2, "var2"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 2342
    if-nez p1, :cond_1

    .line 2343
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2344
    .local v0, "var3":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2345
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2346
    .local v1, "var4":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 2347
    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "var4":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 2354
    .end local v0    # "var3":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 2351
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;

    invoke-direct {v2, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$RoundDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method lambda$null$420(Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 2358
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2360
    .local v0, "var2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2365
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2366
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$26;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2369
    :cond_0
    return-void

    .line 2361
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 2362
    .local v1, "var3":Lcom/vkcoffee/android/UserProfile;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method lambda$null$421(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 2373
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2374
    const-string v0, "\u0412\u0430\u0436\u043d\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 2397
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2377
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateChatUsersPhotos()V

    .line 2378
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 2379
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2380
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->CHAT_MEMBERS:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    .line 2382
    move-object p1, p3

    .line 2383
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2384
    invoke-static {p2}, Lcom/vkcoffee/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 2387
    :cond_2
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setDialogIcon(Ljava/lang/CharSequence;)V

    .line 2392
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateTyping()V

    .line 2393
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->invalidateOptionsMenu()V

    goto :goto_0

    .line 2388
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2389
    invoke-direct {p0, p3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setDialogIcon(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method lambda$null$434(Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 2401
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2403
    .local v0, "var2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2408
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2410
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2419
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-eqz v3, :cond_1

    .line 2420
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->updateImages()V

    .line 2423
    :cond_1
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$23;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2424
    return-void

    .line 2404
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 2405
    .local v1, "var3":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    iget v4, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2411
    .end local v1    # "var3":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 2412
    .local v2, "var4":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v3, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    iget v4, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdUid:I

    invoke-static {v3, v4}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2413
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    iget v4, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v3, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdName:Ljava/lang/String;

    .line 2414
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->usersBuf:Landroid/util/SparseArray;

    iget v4, v2, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setImageUrlFwd(Ljava/lang/String;)V

    .line 2415
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->updateHolder(Z)V

    goto :goto_1
.end method

.method lambda$onCreateContentView$413(Landroid/view/View;)V
    .locals 0
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 2428
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEnd()V

    .line 2429
    return-void
.end method

.method lambda$onCreateContentView$414(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 2433
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->networkError:Z

    .line 2434
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 2435
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 2436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadData(Z)V

    .line 2437
    return-void
.end method

.method lambda$onCreateContentView$415(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 2442
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2443
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendencrMessages()V

    .line 2449
    :goto_0
    return-void

    .line 2445
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendMessage()V

    goto :goto_0
.end method

.method lambda$onCreateContentView$416(Lcom/vkcoffee/android/attachments/GraffitiAttachment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    .prologue
    .line 2455
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 2456
    return-void
.end method

.method lambda$onCreateContentView$417(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/KeyEvent;

    .prologue
    .line 2460
    const/4 v1, 0x1

    .line 2462
    .local v1, "var5":Z
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->keyboardVisible:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2463
    move v0, v1

    .line 2464
    .local v0, "var4":I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2465
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 2466
    move v0, v1

    .line 2472
    .end local v0    # "var4":I
    :cond_0
    :goto_0
    return v0

    .line 2469
    :cond_1
    const/4 v0, 0x0

    .local v0, "var4":Z
    goto :goto_0
.end method

.method lambda$onCreateContentView$418(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/view/KeyEvent;

    .prologue
    .line 2477
    const/4 v2, 0x0

    .line 2478
    .local v2, "var5":Z
    move v0, v2

    .line 2479
    .local v0, "var4":I
    if-eqz p3, :cond_3

    .line 2480
    move v0, v2

    .line 2481
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 2482
    move v0, v2

    .line 2483
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_3

    .line 2484
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "sendByEnter"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2485
    .local v3, "var6":Z
    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2486
    :cond_0
    move v0, v2

    .line 2487
    if-eqz v3, :cond_1

    move v1, v0

    .line 2509
    .end local v0    # "var4":I
    .end local v3    # "var6":Z
    .local v1, "var4":I
    :goto_0
    return v1

    .line 2491
    .end local v1    # "var4":I
    .restart local v0    # "var4":I
    .restart local v3    # "var6":Z
    :cond_1
    move v0, v2

    .line 2492
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-gtz v4, :cond_2

    move v1, v0

    .line 2493
    .end local v0    # "var4":I
    .restart local v1    # "var4":I
    goto :goto_0

    .line 2498
    .end local v1    # "var4":I
    .restart local v0    # "var4":I
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2499
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendencrMessages()V

    .line 2504
    :goto_1
    const/4 v0, 0x1

    .end local v0    # "var4":I
    .end local v3    # "var6":Z
    :cond_3
    move v1, v0

    .line 2509
    .restart local v1    # "var4":I
    goto :goto_0

    .line 2501
    .end local v1    # "var4":I
    .restart local v0    # "var4":I
    .restart local v3    # "var6":Z
    :cond_4
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendMessage()V

    goto :goto_1
.end method

.method lambda$onCreateContentView$419(Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(I)V

    .line 2515
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2516
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadData(Z)V

    .line 2517
    return-void
.end method

.method lambda$onError$426(ILjava/lang/String;)V
    .locals 3
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    .line 1235
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setErrorInfo(ILjava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->clearAnimation()V

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 1241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibilityAnimated(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 1242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1243
    return-void
.end method

.method lambda$onError$427(ILjava/lang/String;)V
    .locals 3
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1246
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->networkError:Z

    .line 1247
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1254
    :cond_0
    return-void
.end method

.method lambda$onError$429(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1047
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1048
    return-void
.end method

.method lambda$onMessagesLoaded$425(ZLjava/util/ArrayList;J)V
    .locals 13
    .param p1, "var1x"    # Z
    .param p2, "var2"    # Ljava/util/ArrayList;
    .param p3, "var3"    # J

    .prologue
    .line 1258
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    .line 1259
    const/4 v3, 0x1

    .line 1264
    .local v3, "var5":Z
    :goto_0
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    if-eqz v8, :cond_0

    if-nez v3, :cond_0

    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-lez v8, :cond_0

    .line 1265
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    :cond_0
    if-nez p1, :cond_1

    .line 1269
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1272
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .local v6, "var8":Ljava/util/ArrayList;
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1275
    .local v7, "var9":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1279
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1281
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1285
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1287
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1296
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 1297
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(Lcom/vkcoffee/android/ui/ErrorViewHelper;I)V

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, p3

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 1299
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 1300
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 1307
    :cond_2
    :goto_4
    move-object v2, p0

    .line 1309
    .local v2, "var12":Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    iget v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-lez v8, :cond_a

    .line 1310
    const/4 v5, 0x1

    .line 1315
    .local v5, "var7":Z
    :goto_5
    iput-boolean v5, v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    .line 1316
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    if-nez v8, :cond_3

    .line 1317
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1318
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1321
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_b

    .line 1322
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1323
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1324
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailable:Z

    .line 1325
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    .line 1370
    :goto_6
    return-void

    .line 1261
    .end local v2    # "var12":Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    .end local v3    # "var5":Z
    .end local v5    # "var7":Z
    .end local v6    # "var8":Ljava/util/ArrayList;
    .end local v7    # "var9":Ljava/util/Iterator;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "var5":Z
    goto/16 :goto_0

    .line 1276
    .restart local v6    # "var8":Ljava/util/ArrayList;
    .restart local v7    # "var9":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/Message;

    iget v8, v8, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1282
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/Message;

    iget v8, v8, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1288
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Message;

    .line 1289
    .local v0, "var10":Lcom/vkcoffee/android/Message;
    iget v8, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1290
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3

    .line 1292
    :cond_8
    iget v8, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1302
    .end local v0    # "var10":Lcom/vkcoffee/android/Message;
    :cond_9
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1303
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 1312
    .restart local v2    # "var12":Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "var7":Z
    goto/16 :goto_5

    .line 1327
    :cond_b
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1328
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1329
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailable:Z

    .line 1330
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    if-eqz v8, :cond_10

    .line 1331
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1339
    :goto_7
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    if-eqz v8, :cond_c

    .line 1340
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsRead()V

    .line 1343
    :cond_c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoading:Z

    .line 1344
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    .line 1345
    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReady:Z

    if-eqz v8, :cond_d

    .line 1346
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloading:Z

    .line 1347
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReady:Z

    .line 1348
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataUp(Z)V

    .line 1351
    :cond_d
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "msg_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1352
    .local v4, "var6x":I
    if-lez v4, :cond_e

    .line 1353
    const/4 v1, 0x0

    .local v1, "var11":I
    :goto_8
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_12

    .line 1360
    :goto_9
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "msg_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1363
    .end local v1    # "var11":I
    :cond_e
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-eqz v8, :cond_f

    if-nez p1, :cond_f

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_f

    .line 1364
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->smoothScrollToBottom()V

    .line 1367
    :cond_f
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    goto/16 :goto_6

    .line 1332
    .end local v4    # "var6x":I
    :cond_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x1e

    if-le v8, v9, :cond_11

    .line 1333
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->prependMessages(Ljava/util/List;)V

    .line 1334
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1e

    invoke-virtual {p2, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 1336
    :cond_11
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->prependMessages(Ljava/util/List;)V

    goto :goto_7

    .line 1354
    .restart local v1    # "var11":I
    .restart local v4    # "var6x":I
    :cond_12
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    iget v8, v8, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    if-ne v8, v4, :cond_13

    .line 1355
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    const/high16 v9, 0x428c0000    # 70.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->setSelectionFromTop(II)V

    goto :goto_9

    .line 1353
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method lambda$onMessagesLoaded$428(Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x0

    .line 1051
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v2, "var4":Ljava/util/ArrayList;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1054
    .local v3, "var5":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1058
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1060
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1064
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1066
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1075
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    .line 1076
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1077
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1078
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    .line 1079
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoadingDown:Z

    .line 1132
    :cond_0
    :goto_3
    return-void

    .line 1055
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1061
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/Message;

    iget v6, v6, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1067
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/Message;

    .line 1068
    .local v4, "var6":Lcom/vkcoffee/android/Message;
    iget v6, v4, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1069
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1071
    :cond_4
    iget v6, v4, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1081
    .end local v4    # "var6":Lcom/vkcoffee/android/Message;
    :cond_5
    move-object v5, p0

    .line 1083
    .local v5, "var7":Lcom/vkcoffee/android/fragments/messages/ChatFragment;
    iget v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offsetFromBottom:I

    if-lez v6, :cond_8

    .line 1084
    const/4 v1, 0x1

    .line 1089
    .local v1, "var3":Z
    :goto_4
    iput-boolean v1, v5, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    .line 1090
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    if-eqz v6, :cond_9

    .line 1091
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v6, v9}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1092
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 1098
    :goto_5
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    if-eqz v6, :cond_a

    .line 1099
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1108
    :goto_6
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_c

    .line 1109
    const/4 v0, 0x1

    .line 1114
    .local v0, "var2":Z
    :goto_7
    if-eqz v0, :cond_6

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->moreAvailableDown:Z

    if-nez v6, :cond_6

    .line 1115
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideJumpButton()V

    .line 1118
    :cond_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateList()V

    .line 1119
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    if-eqz v6, :cond_7

    .line 1120
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsRead()V

    .line 1123
    :cond_7
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->dataLoadingDown:Z

    .line 1124
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    .line 1125
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReadyDown:Z

    if-eqz v6, :cond_0

    .line 1126
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadingDown:Z

    .line 1127
    iput-boolean v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadOnReadyDown:Z

    .line 1128
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadDataDown()V

    goto/16 :goto_3

    .line 1086
    .end local v0    # "var2":Z
    .end local v1    # "var3":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "var3":Z
    goto :goto_4

    .line 1094
    :cond_9
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 1095
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    goto :goto_5

    .line 1100
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_b

    .line 1101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1e

    invoke-virtual {p1, v9, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->appendMessages(Ljava/util/List;)V

    .line 1102
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 1104
    :cond_b
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->appendMessages(Ljava/util/List;)V

    goto :goto_6

    .line 1111
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "var2":Z
    goto :goto_7
.end method

.method lambda$onOptionsItemSelected$423(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Integer;
    .param p2, "var2"    # Ljava/lang/Object;

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2522
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->rebuildItems()V

    .line 2523
    return-void
.end method

.method lambda$onOptionsItemSelected$424(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/Integer;

    .prologue
    .line 2527
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2528
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 2531
    :cond_0
    return-void
.end method

.method lambda$setDialogIcon$412(Ljava/lang/String;Landroid/support/v7/widget/Toolbar;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 2535
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$27;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/graphics/Bitmap;Landroid/support/v7/widget/Toolbar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2536
    return-void
.end method

.method lambda$showMessageOptions$431(Ljava/util/ArrayList;Lcom/vkcoffee/android/Message;Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "message"    # Lcom/vkcoffee/android/Message;
    .param p3, "var3"    # Landroid/content/DialogInterface;
    .param p4, "var4"    # I

    .prologue
    .line 2542
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2543
    .local v7, "var6":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 2643
    :cond_0
    const/4 v10, -0x1

    .line 2646
    .local v10, "var9":B
    :goto_0
    sparse-switch v10, :sswitch_data_1

    .line 2740
    .end local v10    # "var9":B
    :cond_1
    :goto_1
    return-void

    .line 2545
    :sswitch_0
    const-string v12, "delete"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2546
    const/4 v10, 0x4

    .line 2547
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2551
    .end local v10    # "var9":B
    :sswitch_1
    const-string v12, "forward"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2552
    const/4 v10, 0x1

    .line 2553
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2557
    .end local v10    # "var9":B
    :sswitch_2
    const-string v12, "copy"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2558
    const/4 v10, 0x3

    .line 2559
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2563
    .end local v10    # "var9":B
    :sswitch_3
    const-string v12, "reply"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2564
    const/4 v10, 0x0

    .line 2565
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2569
    .end local v10    # "var9":B
    :sswitch_4
    const-string v12, "retry"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2570
    const/4 v10, 0x2

    .line 2571
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2574
    .end local v10    # "var9":B
    :cond_2
    :sswitch_5
    const-string v12, "read"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2575
    const/4 v10, -0x2

    .line 2576
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2579
    .end local v10    # "var9":B
    :cond_3
    :sswitch_6
    const-string v12, "intr"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2580
    const/4 v10, -0x5

    .line 2581
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2584
    .end local v10    # "var9":B
    :cond_4
    :sswitch_7
    const-string v12, "encr"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2585
    const/16 v10, -0xa

    .line 2586
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2589
    .end local v10    # "var9":B
    :cond_5
    :sswitch_8
    const-string v12, "encrPin"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2590
    const/16 v10, -0x12

    .line 2591
    .restart local v10    # "var9":B
    goto :goto_0

    .line 2594
    .end local v10    # "var9":B
    :cond_6
    :sswitch_9
    const-string v12, "markImp"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2595
    new-instance v12, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;

    move-object/from16 v0, p2

    iget v13, v0, Lcom/vkcoffee/android/Message;->id:I

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;-><init>(II)V

    new-instance v13, Lcom/vkcoffee/android/fragments/messages/ChatFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$11;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual {v12, v13}, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v12

    .line 2600
    invoke-virtual {v12}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 2606
    :cond_7
    :sswitch_a
    const-string v12, "deMarkImp"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2607
    new-instance v12, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;

    move-object/from16 v0, p2

    iget v13, v0, Lcom/vkcoffee/android/Message;->id:I

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;-><init>(II)V

    new-instance v13, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$12;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Lcom/vkcoffee/android/Message;)V

    invoke-virtual {v12, v13}, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v12

    .line 2635
    invoke-virtual {v12}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_1

    .line 2649
    .restart local v10    # "var9":B
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-eqz v12, :cond_1

    .line 2650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/vkcoffee/android/Message;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/vkcoffee/android/ui/WriteBar;->addFwdMessages(Ljava/util/List;)V

    goto/16 :goto_1

    .line 2654
    :sswitch_c
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offImpMode()V

    .line 2655
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "var1":Ljava/util/ArrayList;
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 2656
    .restart local p1    # "var1":Ljava/util/ArrayList;
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2657
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->forward(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2662
    :sswitch_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2664
    .local v8, "var7":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2665
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/Message;

    .line 2666
    .local v9, "var8":Lcom/vkcoffee/android/Message;
    iget v12, v9, Lcom/vkcoffee/android/Message;->id:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/vkcoffee/android/Message;->id:I

    if-ne v12, v13, :cond_8

    iget-boolean v12, v9, Lcom/vkcoffee/android/Message;->sendFailed:Z

    if-eqz v12, :cond_8

    .line 2667
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->retryFailed(Lcom/vkcoffee/android/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2672
    .end local v8    # "var7":Ljava/util/Iterator;
    .end local v9    # "var8":Lcom/vkcoffee/android/Message;
    :catch_0
    move-exception v6

    .line 2673
    .local v6, "var5":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 2677
    .end local v6    # "var5":Ljava/lang/Exception;
    :sswitch_e
    move-object/from16 v0, p2

    iget v12, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p2

    iget v13, v0, Lcom/vkcoffee/android/Message;->peer:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsReadTo(II)V

    goto/16 :goto_1

    .line 2682
    :sswitch_f
    move-object/from16 v0, p2

    iget v4, v0, Lcom/vkcoffee/android/Message;->sender:I

    .line 2683
    .local v4, "sender":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkcoffee/android/UserProfile;

    iget-object v3, v12, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 2684
    .local v3, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v13, 0x7f100433

    invoke-virtual {v12, v13}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 2685
    .local v11, "writeBar":Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v12

    if-eqz v12, :cond_9

    .line 2686
    const-string v12, " "

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 2688
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[id"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v13, v0, Lcom/vkcoffee/android/Message;->sender:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2693
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "sender":I
    .end local v11    # "writeBar":Landroid/widget/EditText;
    :sswitch_10
    :try_start_1
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-static {v12}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x2d

    if-gt v12, v13, :cond_a

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-static {v13}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 2695
    .local v5, "toast":Landroid/widget/Toast;
    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v13, v14}, Landroid/widget/Toast;->setGravity(III)V

    .line 2696
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2712
    .end local v5    # "toast":Landroid/widget/Toast;
    :catch_1
    move-exception v2

    .line 2713
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "\u041d\u0435 \u043c\u043e\u0433\u0443 \u0440\u0430\u0441\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u044d\u0442\u043e\u0442 \u0431\u0440\u0435\u0434..."

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2698
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_2
    new-instance v12, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v13, "\u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    invoke-virtual {v12, v13}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 2699
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-static {v13}, Lcom/vkcoffee/android/DecrEncr;->fromHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vkcoffee/android/Msgs;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 2700
    const-string v13, "\u041f\u0440\u043e\u0447\u0438\u0442\u0430\u043d\u043e"

    .line 2701
    new-instance v14, Lcom/vkcoffee/android/fragments/messages/ChatFragment$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$13;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    .line 2700
    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 2707
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 2718
    :sswitch_11
    move-object/from16 v0, p2

    iget v12, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v12}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2719
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/vkcoffee/android/DecrEncr;->readMessage(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 2721
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/vkcoffee/android/Message;->peer:I

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/vkcoffee/android/DecrEncr;->readMessage(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 2729
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "clipboard"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/text/ClipboardManager;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2730
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f08053f

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2733
    :sswitch_13
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "var1":Ljava/util/ArrayList;
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 2734
    .restart local p1    # "var1":Ljava/util/ArrayList;
    invoke-virtual/range {p1 .. p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->confirmAndDelete(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2543
    :sswitch_data_0
    .sparse-switch
        -0x5fcd6863 -> :sswitch_8
        -0x4f997a55 -> :sswitch_0
        -0x285c6d3b -> :sswitch_1
        0x2eaf75 -> :sswitch_2
        0x2f92d8 -> :sswitch_7
        0x316663 -> :sswitch_6
        0x355996 -> :sswitch_5
        0x67612ea -> :sswitch_3
        0x67622a8 -> :sswitch_4
        0x320589bf -> :sswitch_9
        0x7bd031fe -> :sswitch_a
    .end sparse-switch

    .line 2646
    :sswitch_data_1
    .sparse-switch
        -0x12 -> :sswitch_11
        -0xa -> :sswitch_10
        -0x5 -> :sswitch_f
        -0x2 -> :sswitch_e
        0x0 -> :sswitch_b
        0x1 -> :sswitch_c
        0x2 -> :sswitch_d
        0x3 -> :sswitch_12
        0x4 -> :sswitch_13
    .end sparse-switch
.end method

.method lambda$updateChatUsers$422(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 2785
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2786
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2788
    .local v0, "var4":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2795
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2796
    .local v4, "var8":Ljava/util/ArrayList;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2798
    .local v2, "var6":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2805
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2806
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$24;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 2809
    :cond_2
    invoke-static {p0, p2, p1, p3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$25;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2812
    .end local v0    # "var4":Ljava/util/Iterator;
    .end local v2    # "var6":Ljava/util/Iterator;
    .end local v4    # "var8":Ljava/util/ArrayList;
    :cond_3
    return-void

    .line 2789
    .restart local v0    # "var4":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ChatUser;

    .line 2790
    .local v1, "var5":Lcom/vkcoffee/android/ChatUser;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    if-eqz v5, :cond_0

    .line 2791
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v7, v1, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2799
    .end local v1    # "var5":Lcom/vkcoffee/android/ChatUser;
    .restart local v2    # "var6":Ljava/util/Iterator;
    .restart local v4    # "var8":Ljava/util/ArrayList;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Message;

    .line 2800
    .local v3, "var7":Lcom/vkcoffee/android/Message;
    iget v5, v3, Lcom/vkcoffee/android/Message;->sender:I

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatUsers:Landroid/util/SparseArray;

    iget v6, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5, v6}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2801
    iget v5, v3, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method lambda$updateList$430(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "var1"    # Ljava/util/ArrayList;

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 2817
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    if-eqz v0, :cond_0

    .line 2818
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->updateImages()V

    .line 2821
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Landroid/content/Intent;

    .prologue
    .line 2827
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2828
    const/16 v6, 0x64

    if-ne p1, v6, :cond_0

    .line 2830
    :try_start_0
    const-string v6, "GRAFFITY"

    const-string v7, "SELECT_PHOTO GO, IN TRY ZONE"

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2833
    .local v2, "selectedImage":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 2834
    .local v1, "imageStream":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2835
    .local v5, "yourSelectedImage":Landroid/graphics/Bitmap;
    const-string v6, "GRAFFITY"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "START upGrafity(); URI.STR: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    invoke-direct {p0, v5, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->upGraffiti(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2845
    .end local v1    # "imageStream":Ljava/io/InputStream;
    .end local v2    # "selectedImage":Landroid/net/Uri;
    .end local v5    # "yourSelectedImage":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-nez v6, :cond_1

    .line 2846
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 2838
    :catch_0
    move-exception v0

    .line 2839
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "GRAFFITY"

    const-string v7, "SELECT_PHOTO GO, IN TRY ZONE"

    invoke-static {v6, v7}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2848
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v6, 0x2710

    if-le p1, v6, :cond_2

    .line 2849
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v6, p1, p2, p3}, Lcom/vkcoffee/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 2852
    :cond_2
    const/16 v6, 0xc8

    if-ne p1, v6, :cond_3

    const/4 v6, -0x1

    if-ne p2, v6, :cond_3

    .line 2853
    const-string v6, "profile"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 2854
    .local v3, "var4":Lcom/vkcoffee/android/UserProfile;
    iget v6, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-ne v6, v7, :cond_4

    .line 2855
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/ui/WriteBar;->addFwdMessages(Ljava/util/List;)V

    .line 2867
    .end local v3    # "var4":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    :goto_1
    return-void

    .line 2857
    .restart local v3    # "var4":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    new-instance v6, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v8, v3, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setFwd(Ljava/util/ArrayList;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v4

    .line 2858
    .local v4, "var5":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    iget v6, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v7, 0x77359400

    if-ge v6, v7, :cond_5

    .line 2859
    iget-object v6, v3, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 2862
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 2870
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 2871
    sget-object v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->im:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    invoke-static {v0}, Lcom/vkcoffee/android/attachments/MarketAttachment;->setLastSource(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;)V

    .line 2872
    const v0, 0x7f0c00d5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 2873
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    .line 2874
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setHasOptionsMenu(Z)V

    .line 2875
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 2879
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2880
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideEmojiPopup()V

    .line 2881
    const/4 v0, 0x1

    .line 2886
    .local v0, "var1":Z
    :goto_0
    return v0

    .line 2883
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var1":Z
    goto :goto_0
.end method

.method public onBackspace()V
    .locals 4

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2891
    return-void
.end method

.method public onBuildMessage()V
    .locals 3

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    .line 2895
    .local v0, "var1":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->relayoutThumbsRequested:Z

    if-nez v1, :cond_0

    .line 2896
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->relayoutThumbsRequested:Z

    .line 2897
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$15;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2906
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "var1"    # Landroid/content/res/Configuration;

    .prologue
    .line 2909
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2910
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2911
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 2912
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 2913
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2918
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 2922
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2923
    sput-object p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->chatFragmentInst:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 2924
    if-eqz p1, :cond_0

    .line 2925
    const-string v1, "key_group"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/Group;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->group:Lcom/vkcoffee/android/api/Group;

    .line 2928
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2929
    .local v0, "var2":Landroid/content/IntentFilter;
    const-string v1, "com.vkcoffee.android.MESSAGE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2930
    const-string v1, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2931
    const-string v1, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2932
    const-string v1, "com.vkcoffee.android.TYPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2933
    const-string v1, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2934
    const-string v1, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2935
    const-string v1, "com.vkcoffee.android.DIALOG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2936
    const-string v1, "com.vkcoffee.android.MUTE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2937
    const-string v1, "com.vkcoffee.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2938
    const-string v1, "com.vkcoffee.android.MESSAGE_ID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2939
    const-string v1, "com.vkcoffee.android.MESSAGE_SEND_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2940
    const-string v1, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2941
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2942
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    .line 2943
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 32
    .param p1, "var1"    # Landroid/view/LayoutInflater;
    .param p2, "var2"    # Landroid/view/ViewGroup;
    .param p3, "var3"    # Landroid/os/Bundle;

    .prologue
    .line 2948
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 2949
    .local v24, "var8":Landroid/app/Activity;
    new-instance v26, Lcom/vkcoffee/android/fragments/messages/ChatFragment$16;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$16;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    .line 2958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    new-instance v27, Landroid/view/ViewGroup$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    invoke-direct/range {v27 .. v29}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2960
    new-instance v23, Landroid/widget/FrameLayout;

    invoke-direct/range {v23 .. v24}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2961
    .local v23, "var7":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-direct/range {v27 .. v30}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2963
    new-instance v26, Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v16, v0

    .line 2968
    .local v16, "var22":Lcom/vkcoffee/android/ui/WriteBar;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v26, v0

    const v27, 0x77359400

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v26, v0

    if-lez v26, :cond_a

    .line 2969
    const/16 v22, 0x1

    .line 2974
    .local v22, "var6":Z
    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    .line 2976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/vkcoffee/android/data/Friends;->get(I)Lcom/vkcoffee/android/UserProfile;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    .line 2978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    new-instance v27, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v27 .. v27}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    .line 2980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "title"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 2982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2983
    .local v17, "var23":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v27, v17, v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v25, v0

    .line 2986
    .local v25, "var9":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 2987
    const/16 v26, 0x1

    aget-object v18, v17, v26

    .line 2992
    .local v18, "var24":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "photo"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 2996
    .end local v17    # "var23":[Ljava/lang/String;
    .end local v18    # "var24":Ljava/lang/String;
    .end local v25    # "var9":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v26

    if-nez v26, :cond_1

    .line 2997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setFragment(Landroid/app/Fragment;)V

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v27, v0

    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x2

    invoke-direct/range {v28 .. v30}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v26 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3003
    :cond_1
    const v26, 0x7f0f006d

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 3004
    new-instance v26, Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/stickers/StickersView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 3005
    new-instance v26, Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    move-object/from16 v29, v0

    invoke-direct/range {v26 .. v29}, Lcom/vkcoffee/android/stickers/KeyboardPopup;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->getAnchor()Landroid/view/View;

    move-result-object v27

    const v28, -0x14110e

    invoke-virtual/range {v26 .. v28}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->attachToAnchor(Landroid/view/View;I)V

    .line 3007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->setOnVisibilityChangedListener(Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;)V

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->setKeyboardPopup(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setAutoSuggestPopupListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    .line 3011
    new-instance v26, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-direct/range {v26 .. v26}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .line 3012
    new-instance v26, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    invoke-direct/range {v26 .. v26}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    .line 3013
    new-instance v19, Landroid/view/GestureDetector;

    new-instance v26, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$17;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 3032
    .local v19, "var25":Landroid/view/GestureDetector;
    const v26, 0x7f03005c

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, p2

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    .line 3033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setGestureDetector(Landroid/view/GestureDetector;)V

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v28

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 3035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v28

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v28

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v28

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v30, 0x40c00000    # 6.0f

    invoke-static/range {v30 .. v30}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v30

    invoke-virtual/range {v26 .. v30}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setPadding(IIII)V

    .line 3066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setClipToPadding(Z)V

    .line 3067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/vkcoffee/android/fragments/messages/ChatFragment$19;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$19;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Landroid/content/Context;)V

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 3072
    new-instance v26, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    .line 3073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->setTopLoadingView(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V

    .line 3074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreViewBtm:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->setBottomLoadingView(Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;)V

    .line 3075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    const v27, 0x7f1001bf

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setId(I)V

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    new-instance v27, Landroid/graphics/drawable/ColorDrawable;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->setStackFromBottom(Z)V

    .line 3079
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3080
    .local v4, "var10":Landroid/widget/TextView;
    const v26, 0x7f0802eb

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3081
    const/high16 v26, 0x41900000    # 18.0f

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3082
    const/high16 v26, -0x80000000

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3083
    const/16 v26, 0x11

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 3085
    new-instance v26, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->setList(Landroid/view/View;)V

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    new-instance v28, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x11

    invoke-direct/range {v28 .. v31}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v26 .. v28}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->addView(Landroid/view/View;)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->setVisibility(I)V

    .line 3090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3091
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const v27, 0x7f0300e1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    .line 3092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->setList(Lcom/vkcoffee/android/ui/widget/VKRecyclerView;)V

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->createNeededLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3094
    new-instance v26, Landroid/widget/ProgressBar;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    .line 3095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v26, v0

    new-instance v27, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v28, 0x42480000    # 50.0f

    invoke-static/range {v28 .. v28}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v28

    const/high16 v29, 0x42480000    # 50.0f

    invoke-static/range {v29 .. v29}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v29

    const/16 v30, 0x11

    invoke-direct/range {v27 .. v30}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3096
    new-instance v26, Lcom/vkcoffee/android/ui/ErrorViewHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const v28, 0x7f03001d

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/vkcoffee/android/ui/ErrorViewHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setVisibility(I)V

    .line 3098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->getView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3099
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3100
    .local v5, "var11":Landroid/view/View;
    new-instance v26, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v27, -0x1

    const/high16 v28, 0x40800000    # 4.0f

    invoke-static/range {v28 .. v28}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v28

    const/16 v29, 0x50

    invoke-direct/range {v26 .. v29}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3101
    const v26, 0x7f020097

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3102
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3103
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const v27, 0x7f0300df

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    .line 3104
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    const v28, 0x800055

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v6, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3105
    .local v6, "var12":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v26, 0x40c00000    # 6.0f

    invoke-static/range {v26 .. v26}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v27 .. v27}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v27

    const/high16 v28, 0x40c00000    # 6.0f

    invoke-static/range {v28 .. v28}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v28

    const/high16 v29, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v29}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v29

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 3106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setVisibility(I)V

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadMoreView:Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-object/from16 v26, v0

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setOnClickListenerLoadMoreButton(Landroid/view/View$OnClickListener;)V

    .line 3110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-object/from16 v26, v0

    new-instance v27, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->setOnSendClickListener(Landroid/view/View$OnClickListener;)V

    .line 3162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    const v27, 0x7f100436

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v26

    new-instance v27, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$21;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    const v27, 0x7f100434

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v26

    new-instance v27, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    const v27, 0x7f100435

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v26

    new-instance v27, Lcom/vkcoffee/android/fragments/messages/ChatFragment$23;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$23;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$10;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->setGraffitiSender(Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;)V

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    const v27, 0x7f100433

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 3237
    .local v7, "var13":Landroid/widget/EditText;
    const/high16 v26, 0x10000000

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3238
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3239
    new-instance v26, Lcom/vkcoffee/android/fragments/messages/ChatFragment$24;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$24;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3249
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$12;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "fwd"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 3251
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "fwd"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3252
    .local v8, "var14":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/ui/WriteBar;->addFwdMessages(Ljava/util/List;)V

    .line 3255
    .end local v8    # "var14":Ljava/util/ArrayList;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "post"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 3256
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "post"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/NewsEntry;

    .line 3257
    .local v13, "var19":Lcom/vkcoffee/android/NewsEntry;
    const/4 v9, 0x0

    .line 3258
    .local v9, "var15":Ljava/lang/Object;
    iget v0, v13, Lcom/vkcoffee/android/NewsEntry;->type:I

    move/from16 v26, v0

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 3259
    new-instance v9, Lcom/vkcoffee/android/attachments/PromoPostAttachment;

    .end local v9    # "var15":Ljava/lang/Object;
    invoke-direct {v9, v13}, Lcom/vkcoffee/android/attachments/PromoPostAttachment;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    .line 3266
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    .line 3267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/ui/WriteBar;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 3271
    .end local v13    # "var19":Lcom/vkcoffee/android/NewsEntry;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "photos"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 3272
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "photos"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3274
    .local v10, "var16":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_e

    .line 3280
    .end local v10    # "var16":Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "text"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 3281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "text"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 3284
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "attachments"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 3285
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "attachments"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 3286
    .local v11, "var17":[Landroid/os/Parcelable;
    array-length v0, v11

    move/from16 v21, v0

    .line 3288
    .local v21, "var5":I
    const/16 v20, 0x0

    .local v20, "var4":I
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_f

    .line 3296
    .end local v11    # "var17":[Landroid/os/Parcelable;
    .end local v20    # "var4":I
    .end local v21    # "var5":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    move-object/from16 v26, v0

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$13;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View$OnClickListener;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/ErrorViewHelper;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 3297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->group:Lcom/vkcoffee/android/api/Group;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->group:Lcom/vkcoffee/android/api/Group;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/Group;->canMessage:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    const-wide v26, -0x3e22329b00000000L    # -2.0E9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    cmpg-double v26, v26, v28

    if-gez v26, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v26, v0

    if-gez v26, :cond_8

    .line 3298
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setEnableWriteBarIfDoesNotHaveSpecialMarketAttachment(Z)V

    .line 3301
    :cond_8
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->loadData(Z)V

    .line 3302
    sget-object v26, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v26, :cond_9

    .line 3303
    sget-object v26, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/LongPollService;->getTypings(I)Ljava/util/List;

    move-result-object v12

    .line 3304
    .local v12, "var18":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 3305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3306
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateTyping()V

    .line 3310
    .end local v12    # "var18":Ljava/util/List;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    return-object v26

    .line 2971
    .end local v4    # "var10":Landroid/widget/TextView;
    .end local v5    # "var11":Landroid/view/View;
    .end local v6    # "var12":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "var13":Landroid/widget/EditText;
    .end local v19    # "var25":Landroid/view/GestureDetector;
    .end local v22    # "var6":Z
    :cond_a
    const/16 v22, 0x0

    .restart local v22    # "var6":Z
    goto/16 :goto_0

    .line 2989
    .restart local v17    # "var23":[Ljava/lang/String;
    .restart local v25    # "var9":Lcom/vkcoffee/android/UserProfile;
    :cond_b
    const-string v18, ""

    .restart local v18    # "var24":Ljava/lang/String;
    goto/16 :goto_1

    .line 3260
    .end local v17    # "var23":[Ljava/lang/String;
    .end local v18    # "var24":Ljava/lang/String;
    .end local v25    # "var9":Lcom/vkcoffee/android/UserProfile;
    .restart local v4    # "var10":Landroid/widget/TextView;
    .restart local v5    # "var11":Landroid/view/View;
    .restart local v6    # "var12":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "var13":Landroid/widget/EditText;
    .restart local v9    # "var15":Ljava/lang/Object;
    .restart local v13    # "var19":Lcom/vkcoffee/android/NewsEntry;
    .restart local v19    # "var25":Landroid/view/GestureDetector;
    :cond_c
    iget v0, v13, Lcom/vkcoffee/android/NewsEntry;->type:I

    move/from16 v26, v0

    if-nez v26, :cond_d

    .line 3261
    new-instance v9, Lcom/vkcoffee/android/attachments/PostAttachment;

    .end local v9    # "var15":Ljava/lang/Object;
    invoke-direct {v9, v13}, Lcom/vkcoffee/android/attachments/PostAttachment;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    .line 3262
    .local v9, "var15":Lcom/vkcoffee/android/attachments/PostAttachment;
    goto/16 :goto_2

    .local v9, "var15":Ljava/lang/Object;
    :cond_d
    iget-object v0, v13, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_3

    .line 3263
    iget-object v0, v13, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "var15":Ljava/lang/Object;
    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .local v9, "var15":Lcom/vkcoffee/android/attachments/Attachment;
    goto/16 :goto_2

    .line 3275
    .end local v9    # "var15":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v13    # "var19":Lcom/vkcoffee/android/NewsEntry;
    .restart local v10    # "var16":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3276
    .local v14, "var20":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    new-instance v27, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, v27

    invoke-direct {v0, v14}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Lcom/vkcoffee/android/ui/WriteBar;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_3

    .line 3289
    .end local v10    # "var16":Ljava/util/Iterator;
    .end local v14    # "var20":Ljava/lang/String;
    .restart local v11    # "var17":[Landroid/os/Parcelable;
    .restart local v20    # "var4":I
    .restart local v21    # "var5":I
    :cond_f
    aget-object v15, v11, v20

    .line 3290
    .local v15, "var21":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v26, v0

    check-cast v15, Lcom/vkcoffee/android/attachments/Attachment;

    .end local v15    # "var21":Landroid/os/Parcelable;
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/vkcoffee/android/ui/WriteBar;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 3288
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .param p1, "var1"    # Landroid/view/Menu;
    .param p2, "var2"    # Landroid/view/MenuInflater;

    .prologue
    const v10, 0x77359400

    const/4 v8, 0x1

    .line 3346
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3347
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-ge v7, v10, :cond_5

    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const v9, -0x77359400

    if-lt v7, v9, :cond_5

    .line 3348
    const v7, 0x7f110005

    invoke-virtual {p2, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3353
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget v9, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v7, v9}, Lcom/vkcoffee/android/NotificationUtils;->arePeerNotificationsEnabled(Landroid/content/Context;I)Z

    move-result v4

    .line 3354
    .local v4, "var4":Z
    const v7, 0x7f10043e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 3355
    .local v6, "var6":Landroid/view/MenuItem;
    if-eqz v6, :cond_1

    .line 3356
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3359
    :cond_1
    const v7, 0x7f10043f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 3360
    if-eqz v6, :cond_2

    .line 3361
    if-nez v4, :cond_6

    .line 3362
    const/4 v4, 0x1

    .line 3367
    :goto_1
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3370
    :cond_2
    const v7, 0x7f100442

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 3371
    .local v5, "var5":Landroid/view/MenuItem;
    if-eqz v5, :cond_3

    .line 3373
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3374
    const v3, 0x7f08044f

    .line 3379
    .local v3, "var3":I
    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3385
    .end local v3    # "var3":I
    :cond_3
    const v7, 0x7f100438

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3387
    .local v0, "menuItemTmp":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3388
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3389
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3390
    const-string v7, "\u0428\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3392
    new-instance v7, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$25;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3412
    const v7, 0x7f10021d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3413
    .local v1, "menuItemTmp2":Landroid/view/MenuItem;
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3414
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3416
    const-string v2, ""

    .line 3417
    .local v2, "title":Ljava/lang/String;
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v7}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3418
    const-string v2, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u043a\u043b\u044e\u0447"

    .line 3422
    :goto_4
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3423
    new-instance v7, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$26;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3441
    .end local v0    # "menuItemTmp":Landroid/view/MenuItem;
    .end local v1    # "menuItemTmp2":Landroid/view/MenuItem;
    .end local v2    # "title":Ljava/lang/String;
    .end local v4    # "var4":Z
    .end local v5    # "var5":Landroid/view/MenuItem;
    .end local v6    # "var6":Landroid/view/MenuItem;
    :cond_4
    return-void

    .line 3349
    :cond_5
    iget v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-lt v7, v10, :cond_0

    .line 3350
    const v7, 0x7f110002

    invoke-virtual {p2, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_0

    .line 3364
    .restart local v4    # "var4":Z
    .restart local v6    # "var6":Landroid/view/MenuItem;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 3376
    .restart local v5    # "var5":Landroid/view/MenuItem;
    :cond_7
    const v3, 0x7f0800c7

    .restart local v3    # "var3":I
    goto :goto_2

    .end local v3    # "var3":I
    .restart local v0    # "menuItemTmp":Landroid/view/MenuItem;
    :cond_8
    move v7, v8

    .line 3387
    goto :goto_3

    .line 3420
    .restart local v1    # "menuItemTmp2":Landroid/view/MenuItem;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_9
    const-string v2, "\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043b\u044e\u0447"

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 3644
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroy()V

    .line 3646
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3649
    :goto_0
    return-void

    .line 3647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3652
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroyView()V

    .line 3653
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->offImpMode()V

    .line 3655
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    .line 3656
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 3657
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->list:Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    .line 3658
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->progress:Landroid/widget/ProgressBar;

    .line 3659
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorViewHelper;

    .line 3660
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    .line 3661
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->listWrap:Lcom/vkcoffee/android/ui/widget/MessagesTimesList;

    .line 3662
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    .line 3663
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 3664
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 3665
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    .line 3666
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->lastTime:I

    .line 3667
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    .line 3670
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    const v3, 0x7f100433

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3671
    .local v1, "var3":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 3672
    .local v0, "var2":I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 3674
    invoke-virtual {v1, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 3675
    return-void
.end method

.method public onHomePressed()Z
    .locals 5

    .prologue
    .line 3679
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3680
    new-instance v2, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v3, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const-class v4, Lcom/vkcoffee/android/MainActivity;

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 3681
    .local v1, "var2":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3682
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3683
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 3684
    const/4 v0, 0x1

    .line 3689
    .end local v1    # "var2":Landroid/content/Intent;
    .local v0, "var1":Z
    :goto_0
    return v0

    .line 3686
    .end local v0    # "var1":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "var1":Z
    goto :goto_0
.end method

.method public onItemClick(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)V
    .locals 13
    .param p1, "var1"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .prologue
    const/4 v12, 0x1

    .line 3693
    const/4 v2, 0x1

    .line 3694
    .local v2, "var4":Z
    const/4 v3, 0x0

    .line 3695
    .local v3, "var5":Ljava/lang/Object;
    iget v0, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    .line 3696
    .local v0, "var2":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "var6":Ljava/util/Iterator;
    :cond_0
    move-object v5, v3

    .line 3700
    check-cast v5, Lcom/vkcoffee/android/Message;

    .line 3701
    .local v5, "var7":Lcom/vkcoffee/android/Message;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3708
    :goto_0
    if-eqz v5, :cond_1

    .line 3709
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_7

    .line 3710
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3711
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3716
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    const v8, 0x7f08046b

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3717
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 3718
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 3719
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->finish()V

    .line 3744
    :cond_1
    :goto_2
    return-void

    .line 3705
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "var7":Lcom/vkcoffee/android/Message;
    check-cast v5, Lcom/vkcoffee/android/Message;

    .line 3706
    .restart local v5    # "var7":Lcom/vkcoffee/android/Message;
    iget v7, v5, Lcom/vkcoffee/android/Message;->id:I

    if-ne v7, v0, :cond_0

    goto :goto_0

    .line 3713
    :cond_3
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3721
    :cond_4
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f100445

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 3723
    .local v6, "var8":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_5

    .line 3724
    const/4 v1, 0x1

    .line 3729
    .local v1, "var3":Z
    :goto_3
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3730
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v8, 0x7f100443

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 3731
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v12, :cond_6

    .line 3732
    move v1, v2

    .line 3737
    .end local v1    # "var3":Z
    :goto_4
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 3726
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "var3":Z
    goto :goto_3

    .line 3734
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 3740
    .end local v1    # "var3":Z
    .end local v6    # "var8":Landroid/view/MenuItem;
    :cond_7
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showMessageOptions(Lcom/vkcoffee/android/Message;)V

    goto :goto_2
.end method

.method public onItemLongClick(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;)Z
    .locals 11
    .param p1, "var1"    # Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .prologue
    .line 3747
    const/4 v2, 0x0

    .line 3749
    .local v2, "var4":Z
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_1

    .line 3750
    move v1, v2

    .line 3779
    :cond_0
    :goto_0
    return v1

    .line 3752
    :cond_1
    const/4 v3, 0x0

    .line 3753
    .local v3, "var5":Ljava/lang/Object;
    iget v0, p1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    .line 3754
    .local v0, "var2":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "var6":Ljava/util/Iterator;
    :cond_2
    move-object v5, v3

    .line 3758
    check-cast v5, Lcom/vkcoffee/android/Message;

    .line 3759
    .local v5, "var7":Lcom/vkcoffee/android/Message;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3766
    :goto_1
    move v1, v2

    .line 3767
    .local v1, "var3":I
    if-eqz v5, :cond_0

    .line 3768
    move v1, v2

    .line 3769
    iget-boolean v6, v5, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v6, :cond_0

    .line 3770
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/Toolbar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    .line 3771
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3772
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->actionMode:Landroid/view/ActionMode;

    const v7, 0x7f08046b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3773
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->notifyDataSetChanged()V

    .line 3774
    const/4 v1, 0x1

    .local v1, "var3":Z
    goto :goto_0

    .line 3763
    .end local v1    # "var3":Z
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "var7":Lcom/vkcoffee/android/Message;
    check-cast v5, Lcom/vkcoffee/android/Message;

    .line 3764
    .restart local v5    # "var7":Lcom/vkcoffee/android/Message;
    iget v6, v5, Lcom/vkcoffee/android/Message;->id:I

    if-ne v6, v0, :cond_2

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v2, 0x77359400

    const/4 v4, 0x0

    .line 3783
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3811
    :goto_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3785
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getPeerID()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 3789
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v0, v3}, Lcom/vkcoffee/android/NotificationUtils;->arePeerNotificationsEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/NotificationUtils;->setEnableDialogNotification(Landroid/content/Context;IZ)V

    .line 3790
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->titleWithoutIcon:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 3791
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->invalidateOptionsMenu()V

    goto :goto_0

    .line 3789
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3794
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showChatInfoClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 3797
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$15;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/functions/VoidF2;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->clearHistory(Landroid/content/Context;ILjava/lang/Object;Lcom/vkcoffee/android/functions/VoidF2;)V

    goto :goto_0

    .line 3800
    :pswitch_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3801
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int/2addr v1, v2

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$16;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->removeUserFromChat(Landroid/content/Context;IILcom/vkcoffee/android/functions/VoidF1;)V

    goto :goto_0

    .line 3804
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    sub-int/2addr v1, v2

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    new-instance v3, Lcom/vkcoffee/android/fragments/messages/ChatFragment$27;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$27;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    invoke-static {v0, v1, v4, v2, v3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper;->addUserToChat(Landroid/content/Context;ILcom/vkcoffee/android/UserProfile;ILcom/vkcoffee/android/api/Callback;)V

    goto :goto_0

    .line 3783
    nop

    :pswitch_data_0
    .packed-switch 0x7f10043d
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 3815
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onPause()V

    .line 3816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    .line 3817
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->activeInstance:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3818
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->saveDraft()V

    .line 3819
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideSearchedBgRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3820
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "var1"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 3549
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 3550
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3551
    const v5, 0x7f100442

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 3552
    .local v4, "var3":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 3554
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3555
    const v3, 0x7f08044f

    .line 3560
    .local v3, "var2":I
    :goto_0
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3562
    .end local v3    # "var2":I
    :cond_0
    const v5, 0x7f100438

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3564
    .local v0, "menuItemTmp":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 3565
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3566
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3568
    const v5, 0x7f10021d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 3569
    .local v1, "menuItemTmp2":Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3570
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3572
    const-string v2, ""

    .line 3573
    .local v2, "title":Ljava/lang/String;
    iget v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v5}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3574
    const-string v2, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u043a\u043b\u044e\u0447"

    .line 3578
    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3581
    .end local v0    # "menuItemTmp":Landroid/view/MenuItem;
    .end local v1    # "menuItemTmp2":Landroid/view/MenuItem;
    .end local v2    # "title":Ljava/lang/String;
    .end local v4    # "var3":Landroid/view/MenuItem;
    :cond_1
    return-void

    .line 3557
    .restart local v4    # "var3":Landroid/view/MenuItem;
    :cond_2
    const v3, 0x7f0800c7

    .restart local v3    # "var2":I
    goto :goto_0

    .end local v3    # "var2":I
    .restart local v0    # "menuItemTmp":Landroid/view/MenuItem;
    :cond_3
    move v5, v6

    .line 3564
    goto :goto_1

    .line 3576
    .restart local v1    # "menuItemTmp2":Landroid/view/MenuItem;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_4
    const-string v2, "\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043b\u044e\u0447"

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    const v3, 0x77359400

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3825
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onResume()V

    .line 3826
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isActive:Z

    .line 3827
    sput-object p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->activeInstance:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3828
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->markAsRead()V

    .line 3829
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->restoringDraft:Z

    .line 3830
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->restoreDraft()V

    .line 3831
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->restoringDraft:Z

    .line 3832
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-lez v0, :cond_3

    .line 3834
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->USER_DIALOG:I

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    .line 3840
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-le v0, v3, :cond_1

    .line 3841
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateChatUsers(Z)V

    .line 3844
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->searchedMessageId:I

    if-eqz v0, :cond_2

    .line 3845
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hideSearchedBgRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/ViewUtils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 3848
    :cond_2
    return-void

    .line 3835
    :cond_3
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    const v1, -0x77359400

    if-le v0, v1, :cond_0

    .line 3837
    iget v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->COMMUNITY:I

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updSub(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Bundle;

    .prologue
    .line 3851
    const-string v0, "key_group"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->group:Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3852
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3853
    return-void
.end method

.method public onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/String;
    .param p4, "var4"    # Ljava/lang/String;
    .param p5, "var5"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3856
    new-instance v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/StickerAttachment;-><init>()V

    .line 3857
    .local v0, "var6":Lcom/vkcoffee/android/attachments/StickerAttachment;
    iput p2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    .line 3858
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    iput-object v3, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 3859
    iget-object v2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 3860
    .local v2, "var8":[Ljava/lang/String;
    iget-object v1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 3861
    .local v1, "var7":[Ljava/lang/String;
    iget-object v3, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    aget-object p3, v3, v4

    .line 3862
    const/4 v3, 0x2

    aput-object p3, v1, v3

    .line 3863
    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 3864
    iput-object p4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->localPath:Ljava/lang/String;

    .line 3865
    iput p1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    .line 3866
    iput-object p5, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    .line 3867
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->sendAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 3868
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/os/Bundle;

    .prologue
    .line 3871
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3872
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->showChatInfoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3873
    invoke-static {}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->checkImpMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3874
    const-string v0, "\u0412\u0430\u0436\u043d\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 3880
    :goto_0
    return-void

    .line 3876
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setDialogIcon(Ljava/lang/CharSequence;)V

    .line 3877
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public openStickerKeyboard(I)V
    .locals 2
    .param p1, "var1"    # I

    .prologue
    .line 3883
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    if-eqz v0, :cond_0

    .line 3884
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 3885
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->openPack(I)V

    .line 3888
    :cond_0
    return-void
.end method

.method sendReadyGraffiti(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)V
    .locals 3
    .param p1, "document"    # Lcom/vkcoffee/android/api/Document;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3539
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "result_graffiti"

    new-instance v2, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    invoke-direct {v2, p1}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3540
    const/4 v1, -0x1

    invoke-virtual {p2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3541
    instance-of v1, p2, Lcom/vk/attachpicker/AttachActivity;

    if-eqz v1, :cond_0

    .line 3542
    check-cast p2, Lcom/vk/attachpicker/AttachActivity;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-virtual {p2}, Lcom/vk/attachpicker/AttachActivity;->superFinish()V

    .line 3546
    :goto_0
    return-void

    .line 3544
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setHasSeparator(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 3891
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->hasSeparator:Z

    .line 3892
    return-void
.end method

.method protected setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    .line 3895
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 3896
    return-void
.end method

.method protected setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/CharSequence;
    .param p2, "var2"    # Z

    .prologue
    .line 3899
    if-eqz p2, :cond_0

    .line 3900
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitle:Ljava/lang/CharSequence;

    .line 3903
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3904
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "var1"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3907
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    if-eqz v4, :cond_0

    .line 3908
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->writeBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/WriteBar;->setGraffitiTitle(Ljava/lang/String;)V

    .line 3911
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->titleWithoutIcon:Ljava/lang/CharSequence;

    .line 3912
    if-eqz p1, :cond_2

    .line 3913
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 3914
    .local v0, "var2":Landroid/text/Spannable;
    new-instance v4, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;

    sget-object v5, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v5, v5, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v0, v4, v6, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3915
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3916
    .local v2, "var4":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3917
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v4, v5}, Lcom/vkcoffee/android/NotificationUtils;->arePeerNotificationsEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3918
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 3919
    .local v1, "var3":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020199

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3920
    .local v3, "var5":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3921
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v3, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v1, v4, v6, v7, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3922
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3925
    .end local v1    # "var3":Landroid/text/Spannable;
    .end local v3    # "var5":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, v2}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 3928
    .end local v0    # "var2":Landroid/text/Spannable;
    .end local v2    # "var4":Landroid/text/SpannableStringBuilder;
    :cond_2
    return-void
.end method

.method public showTyping(Z)V
    .locals 2
    .param p1, "var1"    # Z

    .prologue
    .line 3931
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->isShowTyping:Z

    .line 3933
    if-eqz p1, :cond_0

    .line 3934
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitleTyping:Ljava/lang/CharSequence;

    .line 3939
    .local v0, "var2":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 3940
    return-void

    .line 3936
    .end local v0    # "var2":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->subtitle:Ljava/lang/CharSequence;

    .restart local v0    # "var2":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public toggleTime()V
    .locals 1

    .prologue
    .line 3943
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->toggle()V

    .line 3944
    return-void
.end method

.method public updSub(II)V
    .locals 7
    .param p1, "stateTemp"    # I
    .param p2, "sizeTemp"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v4, -0x37

    .line 3589
    if-eq p1, v4, :cond_0

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastSub"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3590
    :cond_0
    if-lez p2, :cond_1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sizeSub"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3591
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sizeSub"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3592
    .local v0, "size":I
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "lastSub"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3594
    .local v1, "state":I
    if-ne v1, v4, :cond_3

    .line 3595
    const-string v2, "..."

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3631
    :cond_2
    :goto_0
    return-void

    .line 3597
    :cond_3
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->CHAT_MEMBERS:I

    if-ne v1, v2, :cond_6

    .line 3598
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3599
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0007

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3600
    :cond_4
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3601
    const-string v2, "\u0420\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f \u0441 \u043a\u043b\u044e\u0447\u0435\u043c"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3603
    :cond_5
    const-string v2, "\u041e\u0431\u044b\u0447\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3605
    :cond_6
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->COMMUNITY:I

    if-ne v1, v2, :cond_9

    .line 3606
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3607
    const v2, 0x7f080201

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(I)V

    goto :goto_0

    .line 3609
    :cond_7
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3610
    const-string v2, "\u0420\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f \u0441 \u043a\u043b\u044e\u0447\u0435\u043c"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3612
    :cond_8
    const-string v2, "\u041e\u0431\u044b\u0447\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3615
    :cond_9
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->USER_DIALOG:I

    if-ne v1, v2, :cond_2

    .line 3616
    invoke-static {}, Lcom/vkcoffee/android/OnlineData;->suppIDget()I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    if-ne v2, v3, :cond_a

    .line 3617
    const-string v2, "VK Coffee Account"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 3618
    const-string v2, "\u041f\u0440\u0438\u0435\u043c \u0437\u0430\u044f\u0432\u043e\u043a"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3622
    :cond_a
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->disableEncr()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3623
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v2}, Lcom/vkcoffee/android/data/Friends;->getOnlineStatus(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateOnline(I)V

    goto/16 :goto_0

    .line 3624
    :cond_b
    iget v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->peer:I

    invoke-static {v2}, Lcom/vkcoffee/android/DecrEncr;->checkCachedKey(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3625
    const-string v2, "\u0420\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f \u0441 \u043a\u043b\u044e\u0447\u0435\u043c"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3628
    :cond_c
    const-string v2, "\u041e\u0431\u044b\u0447\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c \u0448\u0438\u0444\u0440\u043e\u0432\u0430\u043d\u0438\u044f"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->adapter:Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->prepareItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$ChatFragment$$Lambda$17;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2089
    return-void
.end method
