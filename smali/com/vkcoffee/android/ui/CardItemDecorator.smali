.class public Lcom/vkcoffee/android/ui/CardItemDecorator;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "CardItemDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I = -0x141210

.field public static final BOTTOM:I = 0x4

.field public static final FIRST_ROW:I = 0x20

.field public static final LAST_ROW:I = 0x40

.field public static final LEFT:I = 0x8

.field public static final MIDDLE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x10

.field public static final TOP:I = 0x2


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private firstCardOffset:I

.field private fullWidth:Z

.field private final mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

.field private final mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private final mProvider:Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I

.field private paddingAfter:I

.field private paddingBefore:I

.field private paddingFirst:I

.field private paddingLast:I

.field private sortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tmpRect:Landroid/graphics/Rect;

.field private viewComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "provider"    # Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;
    .param p3, "manager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p4, "fullWidth"    # Z

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    .line 69
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->fullWidth:Z

    .line 70
    iput v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->firstCardOffset:I

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->sortedChildren:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Lcom/vkcoffee/android/ui/CardItemDecorator$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/CardItemDecorator$1;-><init>(Lcom/vkcoffee/android/ui/CardItemDecorator;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->viewComparator:Ljava/util/Comparator;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iput-object p2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mProvider:Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    .line 82
    iput-object p3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 83
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v0, v1

    .line 84
    .local v0, "dp":F
    iput-boolean p4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->fullWidth:Z

    .line 85
    new-instance v1, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2, v0, p4}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    .line 86
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    const v2, -0x141210

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-void

    .line 90
    .end local v0    # "dp":F
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "provider must be not null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;Z)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "provider"    # Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;
    .param p3, "fullWidth"    # Z

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/vkcoffee/android/ui/CardItemDecorator;-><init>(Landroid/content/res/Resources;Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "fullWidth"    # Z

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    invoke-direct {p0, p1, v0, p2}, Lcom/vkcoffee/android/ui/CardItemDecorator;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;Z)V

    .line 65
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "padBefore"    # I
    .param p4, "padAfter"    # I

    .prologue
    .line 214
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_0

    .line 216
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad bounds "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :catch_0
    move-exception v7

    .line 218
    .local v7, "x":Ljava/lang/Throwable;
    const-string v0, "vk"

    invoke-static {v0, v7}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v7    # "x":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 222
    iget-object v6, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    .line 223
    .local v6, "rect":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p3

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 224
    iget-object v6, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    .line 225
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 227
    const/4 v1, 0x0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_2

    .line 232
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    if-le v0, v1, :cond_3

    .line 237
    const/4 v1, 0x0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    const/4 v4, 0x0

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_4

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 240
    const/4 v1, 0x0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->tmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    :cond_4
    return-void
.end method

.method private getViewBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewTop(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 245
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 246
    .local v1, "pos":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 247
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 251
    iget-object v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mProvider:Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    invoke-interface {v3, v1}, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;->getBlockType(I)I

    move-result v2

    .line 252
    .local v2, "type":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 253
    .local v0, "lm":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    if-eq v3, v6, :cond_3

    :cond_2
    instance-of v3, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_5

    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-nez v3, :cond_5

    .line 254
    :cond_3
    if-nez v1, :cond_4

    .line 255
    or-int/lit8 v2, v2, 0x20

    .line 257
    :cond_4
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 258
    or-int/lit8 v2, v2, 0x40

    .line 261
    :cond_5
    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a

    iget v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    :goto_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 262
    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_b

    iget v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 263
    and-int/lit8 v3, v2, 0x6

    const/4 v4, 0x6

    if-eq v3, v4, :cond_6

    .line 264
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v7, :cond_c

    .line 265
    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 273
    :cond_6
    :goto_3
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v7, :cond_7

    .line 274
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginTop:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 276
    :cond_7
    and-int/lit8 v3, v2, 0x4

    if-ne v3, v8, :cond_8

    .line 277
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginBottom:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 279
    :cond_8
    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 280
    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 281
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginLeft:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 283
    :cond_9
    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 284
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 285
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginRight:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 261
    :cond_a
    iget v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    goto :goto_1

    .line 262
    :cond_b
    iget v3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_2

    .line 266
    :cond_c
    and-int/lit8 v3, v2, 0x4

    if-ne v3, v8, :cond_d

    .line 267
    iput v5, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 268
    :cond_d
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_6

    .line 269
    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 270
    iput v5, p1, Landroid/graphics/Rect;->top:I

    goto :goto_3
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 110
    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 111
    const/high16 v16, -0x80000000

    .line 112
    .local v16, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    add-int v13, v2, v3

    .line 113
    .local v13, "left":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v15, v2, v3

    .line 114
    .local v15, "right":I
    const/16 v18, 0x0

    .line 115
    .local v18, "typeTop":I
    const/4 v12, 0x0

    .line 116
    .local v12, "lastBottom":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-lt v10, v2, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->sortedChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->viewComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 120
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_2

    .line 199
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 200
    const/4 v3, 0x0

    int-to-float v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 202
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 203
    return-void

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->sortedChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 122
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    .line 123
    .local v14, "position":I
    if-ltz v14, :cond_a

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v14, v2, :cond_3

    const/4 v11, 0x1

    .line 125
    .local v11, "isLastByPosition":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v14, v2, :cond_4

    .line 126
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewTop(Landroid/view/View;)I

    move-result v2

    int-to-float v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewBottom(Landroid/view/View;)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 124
    .end local v11    # "isLastByPosition":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 129
    .restart local v11    # "isLastByPosition":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mProvider:Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;

    invoke-interface {v2, v14}, Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;->getBlockType(I)I

    move-result v17

    .line 130
    .local v17, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager;

    if-nez v2, :cond_8

    .line 131
    :cond_6
    if-nez v14, :cond_7

    .line 132
    or-int/lit8 v17, v17, 0x20

    .line 134
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v14, v2, :cond_8

    .line 135
    or-int/lit8 v17, v17, 0x40

    .line 139
    :cond_8
    and-int/lit8 v2, v17, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_f

    .line 140
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewTop(Landroid/view/View;)I

    move-result v16

    .line 141
    and-int/lit8 v2, v17, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    .line 142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->firstCardOffset:I

    add-int v16, v16, v2

    .line 144
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewBottom(Landroid/view/View;)I

    move-result v8

    .line 145
    .local v8, "bottom":I
    move v12, v8

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    and-int/lit8 v2, v17, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    :goto_4
    add-int v4, v16, v2

    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_5
    sub-int v2, v8, v2

    invoke-virtual {v3, v13, v4, v15, v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->setBounds(IIII)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    and-int/lit8 v2, v17, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    move v3, v2

    :goto_6
    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/vkcoffee/android/ui/CardItemDecorator;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    const/high16 v16, -0x80000000

    .line 150
    const/16 v18, 0x0

    .line 120
    .end local v8    # "bottom":I
    .end local v11    # "isLastByPosition":Z
    .end local v17    # "type":I
    :cond_a
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 146
    .restart local v8    # "bottom":I
    .restart local v11    # "isLastByPosition":Z
    .restart local v17    # "type":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_5

    .line 147
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    move v3, v2

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_7

    .line 151
    .end local v8    # "bottom":I
    :cond_f
    and-int/lit8 v2, v17, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 152
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewTop(Landroid/view/View;)I

    move-result v16

    .line 153
    move/from16 v18, v17

    .line 154
    and-int/lit8 v2, v18, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_10

    .line 155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->firstCardOffset:I

    add-int v16, v16, v2

    .line 157
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v10, v2, :cond_11

    if-eqz v11, :cond_a

    .line 158
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewBottom(Landroid/view/View;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int v8, v2, v3

    .line 159
    .restart local v8    # "bottom":I
    if-lt v8, v12, :cond_a

    .line 160
    move v12, v8

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    and-int/lit8 v2, v18, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    :goto_9
    add-int v4, v16, v2

    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_a
    sub-int v2, v8, v2

    invoke-virtual {v3, v13, v4, v15, v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->setBounds(IIII)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    and-int/lit8 v2, v18, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    move v3, v2

    :goto_b
    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/vkcoffee/android/ui/CardItemDecorator;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 161
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_a

    .line 162
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    move v3, v2

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_c

    .line 166
    .end local v8    # "bottom":I
    :cond_16
    and-int/lit8 v2, v17, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 167
    const/high16 v2, -0x80000000

    move/from16 v0, v16

    if-ne v0, v2, :cond_17

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewTop(Landroid/view/View;)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    sub-int v16, v2, v3

    .line 170
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v10, v2, :cond_18

    if-eqz v11, :cond_a

    .line 171
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewBottom(Landroid/view/View;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int v8, v2, v3

    .line 172
    .restart local v8    # "bottom":I
    if-lt v8, v12, :cond_a

    .line 173
    move v12, v8

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    and-int/lit8 v2, v18, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    :goto_d
    add-int v4, v16, v2

    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_e
    sub-int v2, v8, v2

    invoke-virtual {v3, v13, v4, v15, v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->setBounds(IIII)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    and-int/lit8 v2, v18, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    move v3, v2

    :goto_f
    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/vkcoffee/android/ui/CardItemDecorator;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 174
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    goto :goto_d

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_e

    .line 175
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    move v3, v2

    goto :goto_f

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_10

    .line 179
    .end local v8    # "bottom":I
    :cond_1d
    and-int/lit8 v2, v17, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_24

    .line 180
    const/high16 v2, -0x80000000

    move/from16 v0, v16

    if-ne v0, v2, :cond_1e

    .line 181
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewTop(Landroid/view/View;)I

    move-result v16

    .line 183
    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewBottom(Landroid/view/View;)I

    move-result v8

    .line 184
    .restart local v8    # "bottom":I
    if-lt v8, v12, :cond_a

    .line 185
    move v12, v8

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    and-int/lit8 v2, v18, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    :goto_11
    add-int v4, v16, v2

    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_12
    sub-int v2, v8, v2

    invoke-virtual {v3, v13, v4, v15, v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_1f

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    and-int/lit8 v2, v18, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    move v3, v2

    :goto_13
    and-int/lit8 v2, v17, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/vkcoffee/android/ui/CardItemDecorator;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->mDrawable:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_1f
    const/high16 v16, -0x80000000

    .line 192
    const/16 v18, 0x0

    .line 194
    goto/16 :goto_8

    .line 186
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    goto :goto_11

    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_12

    .line 188
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    move v3, v2

    goto :goto_13

    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    goto :goto_14

    .line 194
    .end local v8    # "bottom":I
    :cond_24
    if-nez v17, :cond_a

    .line 195
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewTop(Landroid/view/View;)I

    move-result v2

    int-to-float v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/vkcoffee/android/ui/CardItemDecorator;->getViewBottom(Landroid/view/View;)I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    return-void
.end method

.method public setFirstCardOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->firstCardOffset:I

    .line 106
    return-void
.end method

.method public setInnerMargins(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginLeft:I

    .line 291
    iput p3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginRight:I

    .line 292
    iput p2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginTop:I

    .line 293
    iput p4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->marginBottom:I

    .line 294
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "before"    # I
    .param p2, "after"    # I
    .param p3, "first"    # I
    .param p4, "last"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingBefore:I

    .line 99
    iput p2, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingAfter:I

    .line 100
    iput p3, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingFirst:I

    .line 101
    iput p4, p0, Lcom/vkcoffee/android/ui/CardItemDecorator;->paddingLast:I

    .line 102
    return-void
.end method
