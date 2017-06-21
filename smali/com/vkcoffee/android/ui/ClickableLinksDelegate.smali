.class public Lcom/vkcoffee/android/ui/ClickableLinksDelegate;
.super Ljava/lang/Object;
.source "ClickableLinksDelegate.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private canShowMessageOptions:Z

.field private gestureDetector:Landroid/view/GestureDetector;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hlPaint:Landroid/graphics/Paint;

.field private hlPath:Landroid/graphics/Path;

.field private selectedSpan:Lcom/vkcoffee/android/LinkSpan;

.field private view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->canShowMessageOptions:Z

    .line 39
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    .line 41
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->canShowMessageOptions:Z

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->gestureDetector:Landroid/view/GestureDetector;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 48
    return-void
.end method

.method static synthetic lambda$showMessageOptions$701(Ljava/util/ArrayList;Lcom/vkcoffee/android/LinkSpan;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_1
    return-void

    .line 200
    :sswitch_0
    const-string/jumbo v4, "open"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "copy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 202
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/vkcoffee/android/LinkSpan;->onClick(Landroid/content/Context;)V

    goto :goto_1

    .line 206
    :pswitch_1
    const-string/jumbo v1, "clipboard"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 207
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {p1}, Lcom/vkcoffee/android/LinkSpan;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v1, 0x7f08053f

    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x2eaf75 -> :sswitch_1
        0x34264a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMessageOptions(Landroid/content/Context;Lcom/vkcoffee/android/LinkSpan;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "selectedSpan"    # Lcom/vkcoffee/android/LinkSpan;

    .prologue
    .line 187
    if-nez p2, :cond_1

    const/4 v2, 0x0

    .line 188
    .local v2, "link":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->canShowMessageOptions:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 187
    .end local v2    # "link":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/vkcoffee/android/LinkSpan;->getLink()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 191
    .restart local v2    # "link":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f080323

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const-string/jumbo v3, "open"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const v3, 0x7f0800ff

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v3, "copy"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v3, p1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/vkcoffee/android/LinkSpan;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-static {v0, p2, p1}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate$$Lambda$1;->lambdaFactory$(Ljava/util/ArrayList;Lcom/vkcoffee/android/LinkSpan;Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 136
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->showMessageOptions(Landroid/content/Context;Lcom/vkcoffee/android/LinkSpan;)V

    .line 167
    iput-object v2, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 168
    iput-object v2, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 170
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_b

    .line 55
    const/4 v9, -0x1

    .line 56
    .local v9, "line":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 57
    .local v12, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 58
    .local v7, "l":Landroid/text/Layout;
    if-nez v7, :cond_1

    .line 59
    const/16 v18, 0x0

    .line 130
    .end local v7    # "l":Landroid/text/Layout;
    .end local v9    # "line":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    :goto_0
    return v18

    .line 61
    .restart local v7    # "l":Landroid/text/Layout;
    .restart local v9    # "line":I
    .restart local v12    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v12}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 64
    move v9, v5

    .line 68
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    .line 69
    const/16 v18, 0x0

    goto :goto_0

    .line 61
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 71
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    .line 72
    .local v17, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v13, v17

    .line 73
    check-cast v13, Landroid/text/Spanned;

    .line 74
    .local v13, "s":Landroid/text/Spanned;
    const/16 v18, 0x0

    invoke-interface {v13}, Landroid/text/Spanned;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const-class v20, Lcom/vkcoffee/android/LinkSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v13, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/vkcoffee/android/LinkSpan;

    .line 75
    .local v15, "spans":[Lcom/vkcoffee/android/LinkSpan;
    array-length v0, v15

    move/from16 v18, v0

    if-lez v18, :cond_b

    .line 76
    array-length v0, v15

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    aget-object v14, v15, v18

    .line 77
    .local v14, "span":Lcom/vkcoffee/android/LinkSpan;
    invoke-interface {v13, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 78
    .local v16, "start":I
    invoke-interface {v13, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 79
    .local v4, "end":I
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 80
    .local v11, "lstart":I
    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 81
    .local v8, "lend":I
    if-lt v9, v11, :cond_5

    if-gt v9, v8, :cond_5

    .line 82
    if-ne v9, v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v21

    cmpg-float v20, v20, v21

    if-gez v20, :cond_6

    .line 76
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 85
    :cond_6
    if-ne v9, v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    invoke-virtual {v7, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v21

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_5

    .line 88
    :cond_7
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 89
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/vkcoffee/android/LinkSpan;->getColor()I

    move-result v19

    const v20, 0xffffff

    and-int v19, v19, v20

    const/high16 v20, 0x33000000

    or-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    move v6, v11

    .local v6, "j":I
    :goto_3
    if-gt v6, v8, :cond_a

    .line 93
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v7, v6, v3}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 96
    if-ne v6, v11, :cond_8

    .line 97
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 99
    :cond_8
    if-ne v6, v8, :cond_9

    .line 100
    invoke-virtual {v7, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 105
    :goto_4
    const/high16 v18, -0x40000000    # -2.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v18

    const/high16 v19, -0x40000000    # -2.0f

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/RectF;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 102
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v19

    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    invoke-interface/range {v18 .. v20}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 103
    .local v10, "lineChars":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v18

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 108
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "lineChars":Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->offset(FF)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->invalidate()V

    .line 110
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 116
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "l":Landroid/text/Layout;
    .end local v8    # "lend":I
    .end local v9    # "line":I
    .end local v11    # "lstart":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v13    # "s":Landroid/text/Spanned;
    .end local v14    # "span":Lcom/vkcoffee/android/LinkSpan;
    .end local v15    # "spans":[Lcom/vkcoffee/android/LinkSpan;
    .end local v16    # "start":I
    .end local v17    # "text":Ljava/lang/CharSequence;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/vkcoffee/android/LinkSpan;->onClick(Landroid/content/Context;)V

    .line 119
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 120
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->invalidate()V

    .line 122
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 124
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 125
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->hlPath:Landroid/graphics/Path;

    .line 126
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->selectedSpan:Lcom/vkcoffee/android/LinkSpan;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->invalidate()V

    .line 128
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 130
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public setCanShowMessageOptions(Z)V
    .locals 2
    .param p1, "canShowMessageOptions"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->canShowMessageOptions:Z

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ClickableLinksDelegate;->gestureDetector:Landroid/view/GestureDetector;

    .line 182
    :cond_0
    return-void
.end method
