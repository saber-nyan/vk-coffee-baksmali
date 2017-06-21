.class public Lcom/vkcoffee/android/fragments/PostViewFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "PostViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;
.implements Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener;
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/stickers/StickersView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostDisplayItemViewHolder;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$10;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$11;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$12;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$15;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$4;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$8;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$16$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$16$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$16$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment;",
        "Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;",
        "Lcom/vkcoffee/android/fragments/BackListener;",
        "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener",
        "<",
        "Lcom/vkcoffee/android/NewsComment;",
        ">;",
        "Lcom/vkcoffee/android/ui/holder/comments/DeletedCommentViewHolder$DeletedCommentViewHolderListener",
        "<",
        "Lcom/vkcoffee/android/NewsComment;",
        ">;",
        "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vkcoffee/android/stickers/StickersView$Listener;"
    }
.end annotation


# static fields
.field private static final EDIT_COMMENT_REQUEST:I = 0x10e9

.field private static final EDIT_REQUEST:I = 0x10e8

.field private static final REPORT_RESULT:I = 0x10ea

.field public static final RESULT_DELETED:I = 0x2

.field public static final TYPE_PHOTO:I = 0x1

.field public static final TYPE_POST:I


# instance fields
.field private accessKey:Ljava/lang/String;

.field private adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

.field private canAdmin:Z

.field private canBanUsers:Z

.field private commentBar:Lcom/vkcoffee/android/ui/WriteBar;

.field private comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field

.field private commentsProgress:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private e:Lcom/vkcoffee/android/NewsEntry;

.field private error:Lcom/vkcoffee/android/ui/ErrorView;

.field private keyboardVisible:Z

.field private likeAnim:Landroid/animation/ObjectAnimator;

.field private likePhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private likesView:Landroid/view/View;

.field private liking:Z

.field private loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

.field private loadingComments:Z

.field private mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

.field private mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

.field private postItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private replyFromGroup:Z

.field private replyTo:I

.field private replyToName:Ljava/lang/String;

.field private replyToRName:Ljava/lang/String;

.field private replyToUid:I

.field private scrollToComment:I

.field private type:I

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 160
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->canAdmin:Z

    .line 163
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->canBanUsers:Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    .line 170
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->keyboardVisible:Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    .line 174
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->liking:Z

    .line 176
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadingComments:Z

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$1;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 218
    iput v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyTo:I

    .line 219
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    .line 220
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    .line 221
    iput v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToUid:I

    .line 222
    iput v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->scrollToComment:I

    .line 223
    iput v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->type:I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    .line 448
    return-void
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/stickers/KeyboardPopup;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1441
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->waitAndSendComment()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyFromGroup:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkcoffee/android/fragments/PostViewFragment;)Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$20(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->contentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;Z)V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToComment(Lcom/vkcoffee/android/NewsComment;Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1399
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->deleteComment(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1418
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->editComment(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$25(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0

    .prologue
    .line 1381
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->repostComment(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method static synthetic access$26(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1552
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->broadcastUpdate()V

    return-void
.end method

.method static synthetic access$27(Lcom/vkcoffee/android/fragments/PostViewFragment;)Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyFromGroup:Z

    return v0
.end method

.method static synthetic access$28(Lcom/vkcoffee/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyTo:I

    return v0
.end method

.method static synthetic access$29(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 218
    iput p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyTo:I

    return-void
.end method

.method static synthetic access$31(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-void
.end method

.method static synthetic access$33(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadingComments:Z

    return-void
.end method

.method static synthetic access$34(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateLikePhotos()V

    return-void
.end method

.method static synthetic access$35(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$36(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/SwipeRefreshLayoutI;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/LoadMoreCommentsView;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/vkcoffee/android/fragments/PostViewFragment;)I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->scrollToComment:I

    return v0
.end method

.method static synthetic access$39(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1711
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->highlightComment(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->scrollToComment:I

    return-void
.end method

.method static synthetic access$41(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V
    .locals 0

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->doHighlightComment(I)V

    return-void
.end method

.method static synthetic access$43(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$44(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic access$45(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->liking:Z

    return-void
.end method

.method static synthetic access$46(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0

    .prologue
    .line 1941
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->openBanUserFragment(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1747
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateButtons()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1767
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->animateLikePhotos()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    return-object v0
.end method

.method private animateLikePhotos()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1768
    const/4 v1, 0x1

    .line 1769
    .local v1, "z":Z
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v3, 0x7f100366

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 1770
    .local v0, "lpwrap":Lcom/vkcoffee/android/ui/PhotoStripView;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1771
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 1772
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1774
    :cond_0
    const-string v2, "offset"

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    .line 1775
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/vkcoffee/android/fragments/PostViewFragment$17;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$17;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1782
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1797
    :goto_0
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getHeight()I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    if-lt v2, v3, :cond_1

    .line 1798
    const/4 v1, 0x0

    .line 1800
    :cond_1
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setShowMoreIcon(Z)V

    .line 1801
    return-void

    .line 1784
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_3

    .line 1785
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1787
    :cond_3
    const-string v2, "offset"

    new-array v3, v4, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    .line 1788
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/vkcoffee/android/fragments/PostViewFragment$18;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$18;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1795
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private broadcastUpdate()V
    .locals 10

    .prologue
    .line 1554
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.vkcoffee.android.POST_UPDATED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1556
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    const-string v0, "post_type"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    const-string v0, "comments"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1559
    const-string v0, "retweets"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1560
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1561
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1562
    const-string v0, "retweeted"

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1563
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v7, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/cache/NewsfeedCache;->update(IIIIIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1565
    :catch_0
    move-exception v8

    .line 1566
    .local v8, "x":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private completelyUpdateList()V
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 2002
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 2003
    return-void
.end method

.method private deleteComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 1400
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallDeleteComment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/wall/WallDeleteComment;-><init>(IIIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$13;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$13;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallDeleteComment;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1415
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1416
    return-void
.end method

.method private deletePost()V
    .locals 4

    .prologue
    .line 1067
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallDelete;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/api/wall/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$8;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$8;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1084
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1085
    return-void
.end method

.method private doHighlightComment(I)V
    .locals 10
    .param p1, "pos"    # I

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f100067

    .line 1726
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    sub-int v0, p1, v4

    .line 1727
    .local v0, "childPos":I
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1728
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1729
    .local v1, "item":Landroid/view/View;
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const v7, 0x218fa9c7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v6, v4, v5

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, 0x8fa9c7

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v5, v4, v9

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1730
    .local v3, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1731
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1732
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 1733
    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1734
    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1736
    :cond_0
    invoke-static {v3, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$14;->lambdaFactory$(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v2

    .line 1737
    .local v2, "r":Ljava/lang/Runnable;
    invoke-virtual {v1, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1738
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v2, v6, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1740
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v3    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_1
    return-void
.end method

.method private editComment(Lcom/vkcoffee/android/NewsComment;)V
    .locals 3
    .param p1, "comm"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    .line 1419
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 1420
    .local v0, "ce":Lcom/vkcoffee/android/NewsEntry;
    iget-object v1, p1, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 1421
    iget-object v1, p1, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 1422
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 1423
    iget v1, p1, Lcom/vkcoffee/android/NewsComment;->cid:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 1424
    iget v1, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 1425
    const/4 v1, 0x5

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 1426
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 1427
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    packed-switch v1, :pswitch_data_0

    .line 1435
    const-string v1, "wall"

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 1438
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v1

    const/16 v2, 0x10e9

    invoke-virtual {v1, p0, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 1439
    return-void

    .line 1429
    :pswitch_0
    const-string v1, "photo"

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    goto :goto_0

    .line 1432
    :pswitch_1
    const-string v1, "video"

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    goto :goto_0

    .line 1427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private editRepostComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1088
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1089
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 1091
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1092
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1093
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080451

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1094
    return-void
.end method

.method private highlightComment(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->doHighlightComment(I)V

    .line 1723
    :goto_0
    return-void

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$16;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method static lambda$doHighlightComment$528(Landroid/graphics/drawable/TransitionDrawable;Landroid/view/View;)V
    .locals 2
    .param p0, "transitionDrawable"    # Landroid/graphics/drawable/TransitionDrawable;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1743
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1744
    const v0, 0x7f100067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1745
    return-void
.end method

.method private like(Z)V
    .locals 9
    .param p1, "liked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1804
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1805
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1807
    if-eqz p1, :cond_3

    .line 1808
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    .line 1809
    .local v8, "newsEntry":Lcom/vkcoffee/android/NewsEntry;
    iget v0, v8, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1814
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->broadcastUpdate()V

    .line 1815
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->animateLikePhotos()V

    .line 1816
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateButtons()V

    .line 1817
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->liking:Z

    if-nez v0, :cond_2

    .line 1818
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->liking:Z

    .line 1819
    const-string v7, ""

    .line 1820
    .local v7, "akey":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v7, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v0, v2, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iget-object v7, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 1826
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallLike;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$19;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$19;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallLike;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1862
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1865
    .end local v7    # "akey":Ljava/lang/String;
    .end local v8    # "newsEntry":Lcom/vkcoffee/android/NewsEntry;
    :cond_2
    return-void

    .line 1811
    :cond_3
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    .line 1812
    .restart local v8    # "newsEntry":Lcom/vkcoffee/android/NewsEntry;
    iget v0, v8, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    goto :goto_0
.end method

.method private loadComments(Z)V
    .locals 1
    .param p1, "clear"    # Z

    .prologue
    .line 1571
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadComments(ZZ)V

    .line 1572
    return-void
.end method

.method private loadComments(ZZ)V
    .locals 9
    .param p1, "clear"    # Z
    .param p2, "saveScroll"    # Z

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadingComments:Z

    if-nez v0, :cond_4

    .line 1577
    if-eqz p1, :cond_5

    const/4 v8, 0x0

    .line 1578
    .local v8, "csize":I
    :goto_0
    const/16 v4, 0xa

    .line 1579
    .local v4, "count":I
    if-nez p1, :cond_0

    .line 1580
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1581
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    sub-int/2addr v0, v8

    sub-int/2addr v0, v4

    .line 1583
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->scrollToComment:I

    if-eqz v0, :cond_1

    .line 1584
    const/16 v4, 0x32

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1587
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1591
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 1593
    :cond_3
    move v3, v8

    .line 1594
    .local v3, "offset":I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadingComments:Z

    .line 1595
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallGetComments;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->type:I

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallGetComments;-><init>(IIIIIZLjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$15;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$15;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/Fragment;ZZ)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallGetComments;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1707
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1595
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1709
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v8    # "csize":I
    :cond_4
    return-void

    .line 1577
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_0
.end method

.method private loadVideoInfo()V
    .locals 3

    .prologue
    .line 1949
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGetInfo;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/video/VideoGetInfo;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$22;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$22;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1971
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1972
    return-void
.end method

.method private openBanUserFragment(Lcom/vkcoffee/android/UserProfile;)V
    .locals 3
    .param p1, "p"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 1942
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1943
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1944
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1945
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->open(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 1946
    return-void
.end method

.method private replyToComment(Lcom/vkcoffee/android/NewsComment;Z)V
    .locals 4
    .param p1, "comm"    # Lcom/vkcoffee/android/NewsComment;
    .param p2, "fromGroup"    # Z

    .prologue
    .line 1332
    iget v0, p1, Lcom/vkcoffee/android/NewsComment;->cid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyTo:I

    .line 1333
    iget v0, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToUid:I

    .line 1334
    iget-object v0, p1, Lcom/vkcoffee/android/NewsComment;->userRName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToRName:Ljava/lang/String;

    .line 1335
    iget-object v0, p1, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    .line 1336
    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyFromGroup:Z

    .line 1337
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isTextEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->focus()V

    .line 1342
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1344
    :cond_1
    return-void
.end method

.method private repost()V
    .locals 3

    .prologue
    .line 1879
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1880
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1881
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "post"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1882
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 1884
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private repostComment(Lcom/vkcoffee/android/NewsComment;)V
    .locals 4
    .param p1, "comm"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    const/4 v3, 0x1

    .line 1382
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 1383
    .local v0, "entry":Lcom/vkcoffee/android/NewsEntry;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 1384
    iget v2, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 1385
    iget v2, p1, Lcom/vkcoffee/android/NewsComment;->cid:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 1386
    const/4 v2, 0x5

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 1387
    iget-object v2, p1, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 1388
    iget-object v2, p1, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 1389
    invoke-virtual {v0, v3, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1390
    iget v2, p1, Lcom/vkcoffee/android/NewsComment;->time:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 1391
    iget-object v2, p1, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 1392
    iget-object v2, p1, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    iput-object v2, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 1393
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1394
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1395
    const-string v2, "referer"

    const-string v3, "single"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1397
    return-void
.end method

.method private saveRepostComment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newComment"    # Ljava/lang/String;

    .prologue
    .line 1101
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallEdit;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkcoffee/android/api/wall/WallEdit;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$9;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$9;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1118
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1119
    return-void
.end method

.method private sendComment()V
    .locals 3

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*((?:id|club)[0-9-]+) \\(([^\\)]+)\\)"

    const-string v2, "[$1|$2]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1462
    return-void
.end method

.method private sendComment(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 12
    .param p1, "txt"    # Ljava/lang/String;
    .param p3, "clearCommentBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1469
    .local p2, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    :cond_0
    move v11, p3

    .line 1471
    .local v11, "z":Z
    move-object v10, p1

    .line 1472
    .local v10, "str":Ljava/lang/String;
    move-object v9, p2

    .line 1473
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallAddComment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyTo:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyFromGroup:Z

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/api/wall/WallAddComment;-><init>(IILjava/lang/String;IILjava/util/List;Ljava/lang/String;Z)V

    const-string v1, "ref"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "referer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallAddComment;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$14;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, p0

    move v3, v11

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/fragments/PostViewFragment$14;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;ZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1538
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1540
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "z":Z
    :cond_1
    return-void
.end method

.method private sendStickerComment(Lcom/vkcoffee/android/attachments/StickerAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/StickerAttachment;

    .prologue
    const/4 v2, 0x0

    .line 1465
    const-string v0, ""

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vkcoffee/android/attachments/Attachment;

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1466
    return-void
.end method

.method private updateButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const v3, 0x7f100367

    const v2, 0x7f100365

    .line 1748
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    if-lez v0, :cond_2

    .line 1750
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1755
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v1, 0x7f100366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setOffset(F)V

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    if-lez v0, :cond_4

    .line 1759
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1763
    :goto_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1765
    :cond_1
    return-void

    .line 1752
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1756
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1761
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateLikePhotos()V
    .locals 3

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1124
    const/4 v0, 0x0

    .line 1128
    .local v0, "lpwrap":Lcom/vkcoffee/android/ui/PhotoStripView;
    :goto_0
    if-eqz v0, :cond_0

    .line 1129
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setPadding(I)V

    .line 1130
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likePhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 1131
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setOffset(F)V

    .line 1132
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/PostViewFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$10;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/ui/PhotoStripView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1143
    :cond_0
    return-void

    .line 1126
    .end local v0    # "lpwrap":Lcom/vkcoffee/android/ui/PhotoStripView;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v2, 0x7f100366

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    .restart local v0    # "lpwrap":Lcom/vkcoffee/android/ui/PhotoStripView;
    goto :goto_0

    .line 1131
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 1442
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1443
    .local v0, "progress":Landroid/app/ProgressDialog;
    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1445
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1446
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1447
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$12;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$13;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1448
    return-void
.end method


# virtual methods
.method public bridge synthetic banUser(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->banUser(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method public banUser(Lcom/vkcoffee/android/NewsComment;)V
    .locals 3
    .param p1, "comment"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    .line 1906
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    iget v2, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$21;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$21;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1938
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1939
    return-void
.end method

.method public canBanUsers()Z
    .locals 1

    .prologue
    .line 2006
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->canBanUsers:Z

    return v0
.end method

.method protected doLoadData(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 587
    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-direct {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    .line 592
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$NewsAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 593
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 594
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/fragments/PostViewFragment$CommentsAdapter;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    return-object v0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->hide()V

    .line 1985
    :cond_0
    return-void
.end method

.method lambda$editRepostComment$521(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 1097
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->saveRepostComment(Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method lambda$fail$531()V
    .locals 3

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1869
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateButtons()V

    .line 1870
    return-void
.end method

.method lambda$null$515(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 857
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyFromGroup:Z

    .line 858
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->waitAndSendComment()V

    .line 863
    :goto_0
    return v1

    .line 861
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment()V

    goto :goto_0
.end method

.method lambda$null$526()V
    .locals 2

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v1, 0x98967f

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->scrollToPosition(I)V

    .line 1550
    return-void
.end method

.method lambda$onCreateView$512(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadComments(Z)V

    .line 819
    return-void
.end method

.method lambda$onCreateView$513(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/LoadMoreCommentsView;->showProgress(Z)V

    .line 823
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadComments(Z)V

    .line 825
    return-void
.end method

.method lambda$onCreateView$514(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 828
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->waitAndSendComment()V

    .line 843
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    const v1, -0x4ad4ef2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    const v1, -0x5f4e442

    if-ne v0, v1, :cond_3

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/DecrEncr;->canTransform(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/vkcoffee/android/DecrEncr;->transformText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 835
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment()V

    goto :goto_0

    .line 837
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment()V

    goto :goto_0

    .line 840
    :cond_3
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment()V

    goto :goto_0
.end method

.method lambda$onCreateView$516(Landroid/view/View;)Z
    .locals 4
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    .line 846
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 847
    const/4 v1, 0x0

    .line 853
    :goto_0
    return v1

    .line 849
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100436

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 850
    .local v0, "menu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f080433

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 851
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$15;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 852
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 853
    const/4 v1, 0x1

    goto :goto_0
.end method

.method lambda$onOptionsItemSelected$518(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->deletePost()V

    .line 1052
    return-void
.end method

.method lambda$onOptionsItemSelected$519()V
    .locals 1

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1056
    return-void
.end method

.method lambda$onOptionsItemSelected$520()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 1059
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1060
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 1061
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1064
    :cond_0
    return-void

    .line 1059
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lambda$onViewCreated$517(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 883
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lambda$replyToComment$523()V
    .locals 3

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v2, 0x7f100433

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1348
    return-void
.end method

.method lambda$showCommentActions$522(Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "newsComment"    # Lcom/vkcoffee/android/NewsComment;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 1298
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1299
    .local v0, "act":Ljava/lang/String;
    const-string v2, "profile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1300
    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v3, p2, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    const-string v2, "reply"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "reply_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1302
    :cond_2
    const-string v2, "reply_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToComment(Lcom/vkcoffee/android/NewsComment;Z)V

    goto :goto_0

    .line 1303
    :cond_3
    const-string v2, "copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1304
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/ClipboardManager;

    iget-object v3, p2, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<br/>"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08053f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1306
    :cond_4
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1307
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeComment(Lcom/vkcoffee/android/NewsComment;)V

    goto :goto_0

    .line 1308
    :cond_5
    const-string v2, "liked"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1309
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1310
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "title"

    const v3, 0x7f08028e

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1311
    const-string v2, "ltype"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1312
    const-string v2, "lptype"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1313
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1314
    const-string v2, "item_id"

    iget v3, p2, Lcom/vkcoffee/android/NewsComment;->cid:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    const-class v2, Lcom/vkcoffee/android/fragments/LikesListFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1316
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    const-string v2, "delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1317
    iget v2, p2, Lcom/vkcoffee/android/NewsComment;->cid:I

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->deleteComment(I)V

    goto/16 :goto_0

    .line 1318
    :cond_7
    const-string v2, "edit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1319
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->editComment(Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0

    .line 1320
    :cond_8
    const-string v2, "report"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1321
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->reportComment(Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0

    .line 1322
    :cond_9
    const-string v2, "repost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->repostComment(Lcom/vkcoffee/android/NewsComment;)V

    goto/16 :goto_0
.end method

.method lambda$success$527()V
    .locals 4

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1543
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1544
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->hideEmojiPopup()V

    .line 1545
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$11$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1546
    return-void
.end method

.method lambda$success$529()V
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->like(Z)V

    .line 2330
    return-void
.end method

.method lambda$success$530()V
    .locals 0

    .prologue
    .line 1872
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateButtons()V

    .line 1873
    return-void
.end method

.method lambda$waitAndSendComment$524(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 1451
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 1452
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendComment()V

    .line 1453
    return-void
.end method

.method lambda$waitAndSendComment$525(Landroid/app/ProgressDialog;)V
    .locals 3
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 1456
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 1457
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1458
    return-void
.end method

.method public bridge synthetic likeComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->likeComment(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method public likeComment(Lcom/vkcoffee/android/NewsComment;)V
    .locals 8
    .param p1, "comm"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    const/4 v4, 0x0

    .line 1366
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallLike;

    iget-boolean v1, p1, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v3, p1, Lcom/vkcoffee/android/NewsComment;->cid:I

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    const-string v7, ""

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    const-string v1, "ref"

    const-string v2, "single"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$12;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/NewsComment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1379
    return-void

    .line 1366
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 889
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 890
    const/16 v9, 0x2710

    if-le p1, v9, :cond_0

    .line 891
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v9, p1, p2, p3}, Lcom/vkcoffee/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 893
    :cond_0
    const/16 v9, 0x10e8

    if-ne p1, v9, :cond_2

    const/4 v9, -0x1

    if-eq p2, v9, :cond_1

    const/4 v9, 0x1

    if-ne p2, v9, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    instance-of v9, v9, Lcom/vkcoffee/android/FragmentWrapperActivity;

    if-eqz v9, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 896
    :cond_2
    const/16 v9, 0x10e9

    if-ne p1, v9, :cond_4

    const/4 v9, -0x1

    if-ne p2, v9, :cond_4

    .line 897
    const-string v9, "comment"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    .line 898
    .local v2, "ce":Lcom/vkcoffee/android/NewsEntry;
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 899
    .local v5, "it":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 922
    .end local v2    # "ce":Lcom/vkcoffee/android/NewsEntry;
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_4
    const/16 v9, 0x10ea

    if-ne p1, v9, :cond_6

    const/4 v9, -0x1

    if-ne p2, v9, :cond_6

    .line 923
    const-string v9, "itemID"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 924
    .local v4, "id":I
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 925
    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_b

    .line 934
    .end local v4    # "id":I
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_6
    :goto_1
    return-void

    .line 900
    .restart local v2    # "ce":Lcom/vkcoffee/android/NewsEntry;
    .restart local v5    # "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsComment;

    .line 901
    .local v3, "comm":Lcom/vkcoffee/android/NewsComment;
    iget v9, v3, Lcom/vkcoffee/android/NewsComment;->cid:I

    iget v10, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v9, v10, :cond_3

    .line 902
    iget-object v9, v2, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/vkcoffee/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 903
    iget-object v9, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iput-object v9, v3, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 904
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 905
    .local v7, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/high16 v10, 0x42be0000    # 95.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x25c

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 906
    .local v8, "tSize":I
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 907
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_8

    .line 918
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    goto :goto_0

    .line 908
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/NewsComment;

    .line 909
    .local v1, "c":Lcom/vkcoffee/android/NewsComment;
    iget-object v9, v3, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 910
    .local v6, "it2":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    .line 916
    int-to-float v9, v8

    const v10, 0x3f2a7efa    # 0.666f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, v3, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v8, v9, v10}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    goto :goto_2

    .line 911
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 912
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v9, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v9, :cond_9

    .line 913
    check-cast v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    goto :goto_3

    .line 926
    .end local v1    # "c":Lcom/vkcoffee/android/NewsComment;
    .end local v2    # "ce":Lcom/vkcoffee/android/NewsEntry;
    .end local v3    # "comm":Lcom/vkcoffee/android/NewsComment;
    .end local v6    # "it2":Ljava/util/Iterator;
    .end local v7    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "tSize":I
    .restart local v4    # "id":I
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/NewsComment;

    .line 927
    .restart local v3    # "comm":Lcom/vkcoffee/android/NewsComment;
    iget v9, v3, Lcom/vkcoffee/android/NewsComment;->cid:I

    if-ne v9, v4, :cond_5

    .line 928
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/vkcoffee/android/NewsComment;->isReported:Z

    .line 929
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 463
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 464
    const v2, 0x7f030161

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->setListLayoutId(I)V

    .line 465
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "entry"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    .line 466
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-nez v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v5, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 469
    :cond_0
    const-string v0, ""

    .line 470
    .local v0, "ln":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-nez v2, :cond_7

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "wall"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "type"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->type:I

    .line 481
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v4, :cond_a

    .line 482
    const v2, 0x7f080344

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->setTitle(I)V

    .line 483
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    .line 490
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v9, :cond_3

    .line 491
    :cond_2
    const-string v2, "view_post"

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string v5, "post_ids"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v5

    const-string v6, "repost_ids"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v5, v6, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 493
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v2, v9, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v8, :cond_e

    .line 494
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "comment"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->scrollToComment:I

    .line 495
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "is_admin"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v5, :cond_d

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v5, :cond_d

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    if-ge v2, v4, :cond_d

    move v1, v3

    .line 496
    .local v1, "z":Z
    :goto_3
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->canAdmin:Z

    .line 497
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->setHasOptionsMenu(Z)V

    .line 498
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v2, v3}, Lme/grishka/appkit/utils/Preloader;->setMoreAvailable(Z)V

    .line 499
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loaded:Z

    .line 500
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v8, :cond_5

    .line 501
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadVideoInfo()V

    .line 503
    :cond_5
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v2

    if-lt v2, v4, :cond_6

    .line 504
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->canBanUsers:Z

    .line 510
    .end local v1    # "z":Z
    :cond_6
    :goto_4
    return-void

    .line 472
    :cond_7
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v8, :cond_8

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "video"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v4, :cond_9

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "photo"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "topic"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 484
    :cond_a
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v8, :cond_b

    .line 485
    const v2, 0x7f080583

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->setTitle(I)V

    .line 486
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 488
    :cond_b
    const v2, 0x7f0805b2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->setTitle(I)V

    goto/16 :goto_1

    .line 491
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_d
    move v1, v4

    .line 495
    goto/16 :goto_3

    .line 509
    :cond_e
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_4
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1989
    :cond_0
    const/4 v0, 0x0

    .line 1992
    :goto_0
    return v0

    .line 1991
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->hideEmojiPopup()V

    .line 1992
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackspace()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 444
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 614
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 616
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->like(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 619
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    if-eqz v1, :cond_0

    .line 620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "title"

    const v2, 0x7f08028e

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 622
    const-string v1, "ltype"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    const-string v1, "oid"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    const-class v1, Lcom/vkcoffee/android/fragments/LikesListFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 630
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->repost()V

    goto :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x7f100365
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 605
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 606
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 608
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 609
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 611
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 513
    invoke-super/range {p0 .. p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 514
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    .local v10, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.vkcoffee.android.POST_UPDATED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 517
    new-instance v10, Landroid/content/IntentFilter;

    .end local v10    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 518
    .restart local v10    # "filter":Landroid/content/IntentFilter;
    sget-object v0, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_ADDED:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 520
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tag_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "placer_profile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "tag_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/vkcoffee/android/fragments/PostViewFragment$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$2;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;-><init>(IILcom/vkcoffee/android/UserProfile;ILjava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_0
    const/4 v13, 0x0

    .line 529
    .local v13, "thumbCount":I
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 530
    .local v11, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 541
    .local v12, "it2":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 547
    const/4 v0, 0x3

    if-le v13, v0, :cond_7

    .line 548
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs()V

    .line 565
    :cond_3
    iget-object v14, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->postItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v1, 0x0

    const-string v2, "news"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "single"

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vkcoffee/android/data/Posts;->buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    return-void

    .line 531
    .end local v12    # "it2":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .line 532
    .local v9, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v9, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v0, :cond_5

    move-object v0, v9

    .line 533
    check-cast v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iput-object v1, v0, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    .line 535
    :cond_5
    instance-of v0, v9, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v0, :cond_1

    .line 536
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 542
    .end local v9    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v12    # "it2":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .line 543
    .restart local v9    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v9, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v0, :cond_2

    .line 544
    check-cast v9, Lcom/vkcoffee/android/attachments/PollAttachment;

    .end local v9    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iput-object v0, v9, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    goto :goto_1

    .line 550
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 551
    :cond_8
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 557
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 558
    :cond_9
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .line 560
    .restart local v9    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v9, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v0, :cond_9

    .line 561
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs(Ljava/util/List;)V

    goto :goto_3

    .line 552
    .end local v9    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .line 553
    .restart local v9    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v9, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v0, :cond_8

    .line 554
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/NewsEntry;->layoutThumbs(Ljava/util/List;)V

    goto :goto_2
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v11, 0x7f10045f

    const/16 v10, 0x1000

    const/16 v9, 0x800

    const v8, 0x7f10044a

    const/4 v7, 0x0

    .line 938
    const/4 v3, 0x1

    .line 939
    .local v3, "z2":Z
    const v4, 0x7f110015

    invoke-virtual {p2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 940
    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->canAdmin:Z

    if-eqz v4, :cond_8

    .line 941
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v4, :cond_0

    .line 942
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 944
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v4, :cond_5

    .line 945
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    .line 953
    :cond_1
    :goto_0
    const v4, 0x7f10045e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 954
    const v4, 0x7f10044e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 955
    .local v1, "findItem":Landroid/view/MenuItem;
    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v4, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v4, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 956
    :cond_2
    const/4 v2, 0x0

    .line 960
    .local v2, "z":Z
    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 961
    const v4, 0x7f10045d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v5, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 962
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/high16 v6, 0x10000

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 963
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v6, 0x400

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const v4, 0x7f0803ae

    :goto_2
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 964
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 965
    const v4, 0x7f1000a2

    const v5, 0x7f080049

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 966
    .local v0, "add":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v4, v5, :cond_3

    .line 967
    const/4 v3, 0x0

    .line 969
    :cond_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    const v4, 0x7f100004

    const v5, 0x7f080586

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 972
    .end local v0    # "add":Landroid/view/MenuItem;
    :cond_4
    return-void

    .line 946
    .end local v1    # "findItem":Landroid/view/MenuItem;
    .end local v2    # "z":Z
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v5

    const v6, 0x15180

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v4, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 947
    :cond_7
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 950
    :cond_8
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 951
    const v4, 0x7f100446

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 958
    .restart local v1    # "findItem":Landroid/view/MenuItem;
    :cond_9
    const/4 v2, 0x1

    .restart local v2    # "z":Z
    goto/16 :goto_1

    .line 963
    :cond_a
    const v4, 0x7f0803a6

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    .line 639
    .local v1, "arrayList":Ljava/util/ArrayList;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f030138

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 640
    .local v3, "inflate":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    .line 641
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    .line 643
    .local v2, "arrayList2":Ljava/util/ArrayList;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0300c4

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/LoadMoreCommentsView;

    .line 644
    .local v4, "loadMoreCommentsView":Lcom/vkcoffee/android/LoadMoreCommentsView;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    .line 645
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/LoadMoreCommentsView;->setTag(Ljava/lang/Object;)V

    .line 649
    const v11, 0x7f030083

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/ui/ErrorView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    .line 650
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/ErrorView;->setIsInline(Z)V

    .line 651
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v12, 0x7f100366

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v12, 0x1000

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 654
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    .line 655
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 656
    .local v7, "progress":Landroid/widget/ProgressBar;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v11, 0x41f00000    # 30.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    invoke-direct {v6, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 657
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v11, 0x1

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 658
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v13}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x41800000    # 16.0f

    invoke-static {v15}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 661
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentsProgress:Landroid/widget/FrameLayout;

    const v12, 0x7f10010c

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setId(I)V

    .line 664
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "progress":Landroid/widget/ProgressBar;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v12, 0x7f100365

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v12, 0x7f100367

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    const v12, 0x7f100366

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    new-instance v12, Landroid/widget/AbsListView$LayoutParams;

    const/4 v13, -0x1

    const/high16 v14, 0x42420000    # 48.5f

    invoke-static {v14}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/LoadMoreCommentsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadMoreView:Lcom/vkcoffee/android/LoadMoreCommentsView;

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/LoadMoreCommentsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    invoke-super/range {p0 .. p3}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    .line 670
    .local v9, "view":Landroid/view/View;
    new-instance v10, Lcom/vkcoffee/android/fragments/PostViewFragment$3;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11}, Lcom/vkcoffee/android/fragments/PostViewFragment$3;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;)V

    .line 676
    .local v10, "wrap":Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 677
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    new-instance v11, Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 679
    new-instance v11, Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v11, v12, v0}, Lcom/vkcoffee/android/stickers/StickersView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 680
    new-instance v11, Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {v11, v12, v10, v13}, Lcom/vkcoffee/android/stickers/KeyboardPopup;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 681
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v12}, Lcom/vkcoffee/android/ui/WriteBar;->getAnchor()Landroid/view/View;

    move-result-object v12

    const v13, -0x14110e

    invoke-virtual {v11, v12, v13}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->attachToAnchor(Landroid/view/View;I)V

    .line 682
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->setOnVisibilityChangedListener(Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v12, 0x7f100436

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/vkcoffee/android/fragments/PostViewFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v12, 0x7f100434

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/vkcoffee/android/fragments/PostViewFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$5;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/vkcoffee/android/ui/WriteBar;->setAutoSuggestPopupListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/view/View$OnClickListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;->setOnSendClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/vkcoffee/android/ui/WriteBar;->setFragment(Landroid/app/Fragment;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v13, v13, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v11, v12, v13}, Lcom/vkcoffee/android/ui/WriteBar;->setUploadType(ZI)V

    .line 791
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/vkcoffee/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 792
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;->setKeyboardPopup(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v12, 0x7f100433

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/vkcoffee/android/fragments/PostViewFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$6;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 806
    new-instance v8, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 807
    .local v8, "shadow":Landroid/view/View;
    const v11, 0x7f020098

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 808
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    invoke-direct {v5, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 809
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, -0x40000000    # -2.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 810
    invoke-virtual {v10, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v12, 0x7f100433

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 814
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "shadow":Landroid/view/View;
    :cond_1
    return-object v10
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 569
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroy()V

    .line 571
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 576
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 579
    :cond_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100433

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 436
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 437
    .local v1, "pos":I
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 439
    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 440
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v11, 0x1

    .line 978
    const/4 v5, 0x0

    .line 979
    .local v5, "z":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f100446

    if-ne v6, v7, :cond_3

    .line 980
    const v3, 0x7f08011f

    .line 981
    .local v3, "msg":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v6, v11, :cond_0

    .line 982
    const v3, 0x7f080124

    .line 984
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_1

    .line 985
    const v3, 0x7f08012a

    .line 987
    :cond_1
    new-instance v6, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0800f4

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0802d7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1047
    .end local v3    # "msg":I
    :cond_2
    :goto_0
    return v11

    .line 988
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f10044a

    if-ne v6, v7, :cond_6

    .line 989
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 990
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->editRepostComment(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_4
    new-instance v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v0

    .line 993
    .local v0, "attachPost":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v6, :cond_5

    .line 994
    const/4 v5, 0x1

    .line 996
    :cond_5
    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v6

    const/16 v7, 0x10e8

    invoke-virtual {v6, p0, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    goto :goto_0

    .line 998
    .end local v0    # "attachPost":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f10000e

    if-ne v6, v7, :cond_c

    .line 999
    const-string v2, "http://vk.com/"

    .line 1000
    .local v2, "ln":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_9

    .line 1001
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/ClipboardManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f080290

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1002
    :cond_9
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_a

    .line 1003
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1004
    goto :goto_1

    :cond_a
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v6, v11, :cond_b

    .line 1005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "topic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1011
    .end local v2    # "ln":Ljava/lang/String;
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f10045e

    if-ne v6, v7, :cond_f

    .line 1012
    const-string v4, "wall"

    .line 1013
    .local v4, "type":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    if-ne v6, v11, :cond_d

    .line 1014
    const-string v4, "photo"

    .line 1016
    :cond_d
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    if-ne v6, v8, :cond_e

    .line 1017
    const-string v4, "video"

    .line 1019
    :cond_e
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "vkontakte://vk.com/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v10, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v10, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1020
    .end local v4    # "type":Ljava/lang/String;
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f10044e

    if-ne v6, v7, :cond_12

    .line 1021
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkcoffee/android/ReportContentActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1022
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "itemID"

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const-string v6, "ownerID"

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1024
    const-string v4, "post"

    .line 1025
    .restart local v4    # "type":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v6, v11, :cond_10

    .line 1026
    const-string v4, "photo"

    .line 1028
    :cond_10
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v6, v8, :cond_11

    .line 1029
    const-string v4, "video"

    .line 1031
    :cond_11
    const-string v6, "type"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1033
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "type":Ljava/lang/String;
    :cond_12
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f10045d

    if-ne v6, v7, :cond_13

    .line 1034
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkcoffee/android/data/Posts;->publishPostponed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1035
    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f10045f

    if-ne v6, v7, :cond_14

    .line 1036
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkcoffee/android/data/Posts;->toggleFixed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1037
    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f1000a2

    if-ne v6, v7, :cond_15

    .line 1038
    new-instance v6, Lcom/vkcoffee/android/api/video/VideoAdd;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/api/video/VideoAdd;-><init>(II)V

    new-instance v7, Lcom/vkcoffee/android/fragments/PostViewFragment$7;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/vkcoffee/android/fragments/PostViewFragment$7;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/video/VideoAdd;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    .line 1043
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .line 1044
    :cond_15
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x7f100004

    if-ne v6, v7, :cond_2

    .line 1045
    new-instance v7, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v6, v6, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {v7, v8, v6}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->showAlbumsDialog(ILcom/vkcoffee/android/api/VideoFile;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 582
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onPause()V

    .line 583
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->hideEmojiPopup()V

    .line 584
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 975
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1996
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v2}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->isReversed()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1997
    .local v0, "z":Z
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadComments(ZZ)V

    .line 1998
    return-void

    .line 1996
    .end local v0    # "z":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 5
    .param p1, "firstItem"    # I
    .param p2, "visibleCount"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 451
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    .line 452
    .local v1, "layoutI":Lme/grishka/appkit/views/SwipeRefreshLayoutI;
    if-eqz v1, :cond_0

    .line 453
    add-int v4, p1, p2

    sub-int v4, p3, v4

    if-ge p1, v4, :cond_1

    move v0, v2

    .line 454
    .local v0, "isUp":Z
    :goto_0
    invoke-interface {v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->isReversed()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 455
    invoke-interface {v1, v3}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setReversed(Z)V

    .line 460
    .end local v0    # "isUp":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 453
    goto :goto_0

    .line 456
    .restart local v0    # "isUp":Z
    :cond_2
    invoke-interface {v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->isReversed()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 457
    invoke-interface {v1, v2}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setReversed(Z)V

    goto :goto_1
.end method

.method public onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packId"    # I
    .param p2, "stickerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "localPath"    # Ljava/lang/String;
    .param p5, "stickerReferrer"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 420
    new-instance v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/StickerAttachment;-><init>()V

    .line 421
    .local v0, "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    iput p2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    .line 422
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v5

    iput-object v4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 423
    iget-object v2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 424
    .local v2, "strArr":[Ljava/lang/String;
    iget-object v3, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 425
    .local v3, "strArr2":[Ljava/lang/String;
    iget-object v4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v1, v4, v5

    .line 426
    .local v1, "str":Ljava/lang/String;
    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 427
    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 428
    iput-object p4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->localPath:Ljava/lang/String;

    .line 429
    iput p1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    .line 430
    iput-object p5, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    .line 431
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->sendStickerComment(Lcom/vkcoffee/android/attachments/StickerAttachment;)V

    .line 432
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 867
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 868
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateButtons()V

    .line 869
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateLikePhotos()V

    .line 870
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x26000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 871
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$PostViewFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 872
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 873
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v3, v3, v3, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 874
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->likesView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->setRefreshEnabled(Z)V

    .line 880
    :goto_0
    return-void

    .line 879
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->loadComments(Z)V

    goto :goto_0
.end method

.method public openStickerKeyboard(I)V
    .locals 2
    .param p1, "pack"    # I

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 1977
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->mStickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->openPack(I)V

    .line 1979
    :cond_0
    return-void
.end method

.method public bridge synthetic replyToComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToComment(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method public replyToComment(Lcom/vkcoffee/android/NewsComment;)V
    .locals 1
    .param p1, "comment"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    .line 1328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->replyToComment(Lcom/vkcoffee/android/NewsComment;Z)V

    .line 1329
    return-void
.end method

.method public bridge synthetic reportComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->reportComment(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method public reportComment(Lcom/vkcoffee/android/NewsComment;)V
    .locals 4
    .param p1, "comm"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    .line 1351
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/ReportContentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1352
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "itemID"

    iget v3, p1, Lcom/vkcoffee/android/NewsComment;->cid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    const-string v2, "ownerID"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1354
    const-string v1, "post_comment"

    .line 1355
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1356
    const-string v1, "photo_comment"

    .line 1358
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1359
    const-string v1, "video_comment"

    .line 1361
    :cond_1
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    const/16 v2, 0x10ea

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1363
    return-void
.end method

.method public restoreComment(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    .line 1887
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallRestoreComment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->accessKey:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/wall/WallRestoreComment;-><init>(IIIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$20;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$20;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallRestoreComment;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1902
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1903
    return-void
.end method

.method public bridge synthetic showCommentActions(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->showCommentActions(Lcom/vkcoffee/android/NewsComment;)V

    return-void
.end method

.method public showCommentActions(Lcom/vkcoffee/android/NewsComment;)V
    .locals 9
    .param p1, "comm"    # Lcom/vkcoffee/android/NewsComment;

    .prologue
    const/4 v8, 0x1

    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, "canDelete":Z
    iget-boolean v6, p1, Lcom/vkcoffee/android/NewsComment;->isDeleted:Z

    if-nez v6, :cond_9

    .line 1147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v6, v6

    invoke-static {v6}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 1158
    const v6, 0x7f080433

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    const-string v6, "reply_group"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_0
    const v6, 0x7f080100

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    const-string v6, "copy"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v6, v8}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v6, :cond_1

    .line 1164
    const v6, 0x7f080437

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    const-string v6, "repost"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->canBanUsers()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1169
    const-string v6, "\u0417\u0430\u0431\u0430\u043d\u0438\u0442\u044c"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    const-string v6, "ban"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_2
    iget v6, p1, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    if-lez v6, :cond_3

    .line 1174
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1175
    .local v5, "resources":Landroid/content/res/Resources;
    iget v2, p1, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    .line 1176
    .local v2, "i":I
    new-array v4, v8, [Ljava/lang/Object;

    .line 1177
    .local v4, "objArr":[Ljava/lang/Object;
    const/4 v6, 0x0

    iget v7, p1, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1178
    const v6, 0x7f0e0008

    invoke-virtual {v5, v6, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    const-string v6, "liked"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    .end local v2    # "i":I
    .end local v4    # "objArr":[Ljava/lang/Object;
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_3
    iget-boolean v6, p1, Lcom/vkcoffee/android/NewsComment;->canDelete:Z

    if-nez v6, :cond_5

    iget v6, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v6, v6

    invoke-static {v6}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v6

    if-ne v6, v8, :cond_4

    iget v6, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    if-lez v6, :cond_4

    iget v6, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v6, v6

    invoke-static {v6}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v6

    if-le v6, v8, :cond_6

    .line 1182
    :cond_5
    const/4 v1, 0x1

    .line 1184
    :cond_6
    if-eqz v1, :cond_7

    .line 1185
    const v6, 0x7f080119

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    const-string v6, "delete"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-boolean v6, p1, Lcom/vkcoffee/android/NewsComment;->canEdit:Z

    if-eqz v6, :cond_7

    .line 1188
    const v6, 0x7f08013d

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    const-string v6, "edit"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_7
    iget v6, p1, Lcom/vkcoffee/android/NewsComment;->uid:I

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v6, v7, :cond_8

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v6, :cond_8

    if-nez v1, :cond_8

    .line 1193
    const v6, 0x7f080435

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    const-string v6, "report"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_8
    new-instance v7, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/vkcoffee/android/fragments/PostViewFragment$11;

    invoke-direct {v8, p0, v0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$11;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)V

    invoke-virtual {v7, v6, v8}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1255
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1257
    .end local v0    # "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    return-void
.end method
