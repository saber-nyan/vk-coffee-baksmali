.class public Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;
.super Landroid/widget/FrameLayout;
.source "MessageTimeAnchorView.java"


# static fields
.field private static TIME_DRAW_SIZE:I

.field private static TIME_PADDING:I


# instance fields
.field private animatorTimeAnchorHide:Landroid/animation/Animator;

.field private animatorTimeAnchorShow:Landroid/animation/Animator;

.field private currentScrollState:I

.field private isDrawHideTitleRect:Z

.field private itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

.field private paint:Landroid/graphics/Paint;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->TIME_PADDING:I

    .line 31
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->TIME_DRAW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    .line 36
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    .line 37
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->paint:Landroid/graphics/Paint;

    .line 40
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->currentScrollState:I

    .line 42
    new-instance v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;-><init>(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    .line 36
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    .line 37
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->paint:Landroid/graphics/Paint;

    .line 40
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->currentScrollState:I

    .line 42
    new-instance v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;-><init>(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    .line 36
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    .line 37
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->paint:Landroid/graphics/Paint;

    .line 40
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->currentScrollState:I

    .line 42
    new-instance v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;-><init>(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    .line 36
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    .line 37
    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->paint:Landroid/graphics/Paint;

    .line 40
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->currentScrollState:I

    .line 42
    new-instance v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView$1;-><init>(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->TIME_DRAW_SIZE:I

    return v0
.end method

.method public static checkTimeAnchor(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;I)I
    .locals 12
    .param p0, "p"    # Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "adapter"    # Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastTime"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 159
    if-eqz p0, :cond_4

    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    if-eqz v8, :cond_4

    .line 160
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "firstView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    sget v11, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->TIME_PADDING:I

    if-le v8, v11, :cond_5

    :cond_0
    move v6, v10

    .line 163
    .local v6, "useTimeFromFirstView":Z
    :goto_0
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    iget-object v8, v8, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->getFirstVisiblePosition()I

    move-result v11

    if-eqz v6, :cond_6

    move v8, v9

    :goto_1
    add-int v2, v11, v8

    .line 164
    .local v2, "index":I
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->getMessageItemByPosition(I)Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    move-result-object v4

    .line 165
    .local v4, "itemFirst":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    if-eqz v4, :cond_1

    iget v8, v4, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    if-nez v8, :cond_1

    .line 166
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {p1, v8}, Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;->getMessageItemByPosition(I)Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    move-result-object v3

    .line 167
    .local v3, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    if-eqz v3, :cond_1

    .line 168
    iget v8, v3, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    iput v8, v4, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    .line 172
    .end local v3    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_1
    if-eqz v4, :cond_2

    iget v8, v4, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    if-eq v8, p2, :cond_2

    iget v8, v4, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    if-eqz v8, :cond_2

    .line 173
    iget p2, v4, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->groupMessagesTime:I

    invoke-static {p2}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_2
    const/4 v5, 0x0

    .line 177
    .local v5, "timeView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 178
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-virtual {v8, v1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 179
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getBottom()I

    move-result v11

    if-ge v8, v11, :cond_3

    .line 180
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    if-eqz v8, :cond_7

    .line 181
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->getLastItem()Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isTime()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 182
    move-object v5, v7

    .line 191
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sget v11, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->TIME_PADDING:I

    if-le v8, v11, :cond_8

    .line 192
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getHeight()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->setTranslationY(F)V

    .line 208
    .end local v0    # "firstView":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v4    # "itemFirst":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .end local v5    # "timeView":Landroid/view/View;
    .end local v6    # "useTimeFromFirstView":Z
    :cond_4
    :goto_3
    return p2

    .restart local v0    # "firstView":Landroid/view/View;
    :cond_5
    move v6, v9

    .line 161
    goto/16 :goto_0

    .restart local v6    # "useTimeFromFirstView":Z
    :cond_6
    move v8, v10

    .line 163
    goto :goto_1

    .line 177
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v4    # "itemFirst":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    .restart local v5    # "timeView":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/View;
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    .end local v7    # "view":Landroid/view/View;
    :cond_8
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    sget v11, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->TIME_PADDING:I

    sub-int/2addr v8, v11

    if-lez v8, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-gez v8, :cond_a

    .line 195
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    if-nez v8, :cond_9

    .line 196
    iput-boolean v10, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    .line 197
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-static {v8}, Lcom/vkcoffee/android/ViewUtils;->invalidate(Landroid/view/View;)V

    .line 205
    :cond_9
    :goto_4
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->setTranslationY(F)V

    goto :goto_3

    .line 200
    :cond_a
    iget-boolean v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    if-eqz v8, :cond_9

    .line 201
    iput-boolean v9, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->isDrawHideTitleRect:Z

    .line 202
    iget-object v8, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-static {v8}, Lcom/vkcoffee/android/ViewUtils;->invalidate(Landroid/view/View;)V

    goto :goto_4
.end method

.method private hide()V
    .locals 5

    .prologue
    const-wide/16 v0, 0x190

    const/high16 v4, 0x3f800000    # 1.0f

    .line 146
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 150
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    .line 151
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 154
    :cond_1
    return-void

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v0

    sub-float v0, v4, v0

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0xc8

    add-int/lit16 v0, v0, 0x190

    int-to-long v0, v0

    goto :goto_0

    .line 150
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static onScrollStateChanged(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;I)V
    .locals 1
    .param p0, "p"    # Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "newState"    # I

    .prologue
    .line 114
    if-nez p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 117
    :cond_1
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->currentScrollState:I

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->hide()V

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->show()V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private show()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorHide:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 140
    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->animatorTimeAnchorShow:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->getAlpha()F

    move-result v1

    sub-float v1, v4, v1

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 143
    :cond_2
    return-void
.end method


# virtual methods
.method public createNeededLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 110
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->textView:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->invalidate(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setList(Lcom/vkcoffee/android/ui/widget/VKRecyclerView;)V
    .locals 1
    .param p1, "list"    # Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->list:Lcom/vkcoffee/android/ui/widget/VKRecyclerView;

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 88
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 92
    .local v0, "b":Z
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->forceLayout()V

    .line 94
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->requestLayout()V

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->currentScrollState:I

    packed-switch v1, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 98
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->hide()V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->show()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
