.class public Lcom/vkcoffee/android/coffeeexternal/DragListView;
.super Landroid/widget/ListView;
.source "DragListView.java"


# instance fields
.field private downScrollBounce:I

.field private dragImageView:Landroid/widget/ImageView;

.field private dragOffset:I

.field private dragPoint:I

.field private dragPosition:I

.field private dragSrcPosition:I

.field private scaledTouchSlop:I

.field private upScrollBounce:I

.field private windowManager:Landroid/view/WindowManager;

.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->scaledTouchSlop:I

    .line 41
    return-void
.end method


# virtual methods
.method public onDrag(I)V
    .locals 5
    .param p1, "y"    # I

    .prologue
    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x3f4ccccd    # 0.8f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 150
    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPoint:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 151
    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->pointToPosition(II)I

    move-result v1

    .line 154
    .local v1, "tempPosition":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 155
    iput v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    .local v0, "scrollHeight":I
    iget v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->upScrollBounce:I

    if-ge p1, v2, :cond_4

    .line 160
    const/16 v0, 0x8

    .line 165
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 166
    iget v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->setSelectionFromTop(II)V

    .line 168
    :cond_3
    return-void

    .line 161
    :cond_4
    iget v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->downScrollBounce:I

    if-le p1, v2, :cond_2

    .line 162
    const/4 v0, -0x8

    goto :goto_0
.end method

.method public onDrop(I)V
    .locals 5
    .param p1, "y"    # I

    .prologue
    const/4 v4, 0x1

    .line 179
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->pointToPosition(II)I

    move-result v2

    .line 180
    .local v2, "tempPosition":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 181
    iput v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    .line 185
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 186
    iput v4, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    .line 195
    :cond_1
    :goto_0
    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    if-lez v3, :cond_2

    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;

    .line 197
    .local v0, "adapter":Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;
    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragSrcPosition:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "dragItem":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->remove(Ljava/lang/Object;)V

    .line 199
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->setChangedPos()V

    .line 200
    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->insert(Ljava/lang/Object;I)V

    .line 204
    .end local v0    # "adapter":Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;
    .end local v1    # "dragItem":Ljava/lang/String;
    :cond_2
    return-void

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 50
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 53
    .local v4, "y":I
    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->pointToPosition(II)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    iput v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragSrcPosition:I

    .line 54
    iget v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 75
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_0
    return v5

    .line 59
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_0
    iget v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 60
    .local v2, "itemView":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v5, v4, v5

    iput v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPoint:I

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    int-to-float v6, v4

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragOffset:I

    .line 64
    const v5, 0x7f100262

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "dragger":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    if-le v3, v5, :cond_1

    .line 66
    iget v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->scaledTouchSlop:I

    sub-int v5, v4, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->upScrollBounce:I

    .line 67
    iget v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->scaledTouchSlop:I

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->downScrollBounce:I

    .line 69
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 70
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, v4}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->startDrag(Landroid/graphics/Bitmap;I)V

    .line 73
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 75
    .end local v1    # "dragger":Landroid/view/View;
    .end local v2    # "itemView":Landroid/view/ViewGroup;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    iget-object v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 85
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    const/4 v3, 0x1

    .line 100
    .end local v0    # "action":I
    :goto_1
    return v3

    .line 87
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 88
    .local v2, "upY":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->stopDrag()V

    .line 89
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->onDrop(I)V

    goto :goto_0

    .line 92
    .end local v2    # "upY":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 93
    .local v1, "moveY":I
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->onDrag(I)V

    goto :goto_0

    .line 100
    .end local v0    # "action":I
    .end local v1    # "moveY":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startDrag(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 109
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->stopDrag()V

    .line 112
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 113
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 114
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 125
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowManager:Landroid/view/WindowManager;

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iput-object v0, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    .line 130
    return-void
.end method

.method public stopDrag()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/coffeeexternal/DragListView;->dragImageView:Landroid/widget/ImageView;

    .line 140
    :cond_0
    return-void
.end method
