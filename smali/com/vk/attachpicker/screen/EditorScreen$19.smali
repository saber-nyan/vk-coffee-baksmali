.class Lcom/vk/attachpicker/screen/EditorScreen$19;
.super Ljava/lang/Object;
.source "EditorScreen.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/EditorScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastPosition:F

.field final synthetic this$0:Lcom/vk/attachpicker/screen/EditorScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPosition(III)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "limit"    # I
    .param p3, "delta"    # I

    .prologue
    .line 1363
    if-ne p1, p3, :cond_0

    .line 1375
    .end local p1    # "position":I
    :goto_0
    return p1

    .line 1365
    .restart local p1    # "position":I
    :cond_0
    if-lez p3, :cond_2

    .line 1366
    add-int v0, p1, p3

    if-gt v0, p2, :cond_1

    .line 1367
    add-int/2addr p1, p3

    goto :goto_0

    .line 1369
    :cond_1
    add-int v0, p1, p3

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 1372
    :cond_2
    add-int v0, p1, p3

    if-ltz v0, :cond_3

    .line 1373
    add-int/2addr p1, p3

    goto :goto_0

    .line 1375
    :cond_3
    sub-int v0, p2, p1

    add-int/2addr v0, p3

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1416
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2702(Lcom/vk/attachpicker/screen/EditorScreen;I)I

    .line 1417
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;

    move-result-object v3

    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3200(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->setTouchEnabled(Z)V

    .line 1419
    if-nez p1, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3300(Lcom/vk/attachpicker/screen/EditorScreen;Z)V

    .line 1421
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2800(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3100(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1425
    if-nez p1, :cond_3

    .line 1426
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3100(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1431
    :goto_1
    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$100(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/FiltersViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$300(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 1434
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1417
    goto :goto_0

    .line 1428
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3100(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2600(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1383
    iget v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->lastPosition:F

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2700(Lcom/vk/attachpicker/screen/EditorScreen;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2800(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 1387
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2600(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    move-result-object v0

    .line 1388
    .local v0, "filter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    if-eqz v0, :cond_1

    int-to-float v1, p1

    iget v2, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->lastPosition:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1389
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2900(Lcom/vk/attachpicker/screen/EditorScreen;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1390
    invoke-virtual {v0, p2}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->setFilterPosition(F)V

    .line 1394
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/EditorScreen;->access$2600(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender()V

    .line 1397
    .end local v0    # "filter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    :cond_1
    int-to-float v1, p1

    iput v1, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->lastPosition:F

    .line 1398
    return-void

    .line 1392
    .restart local v0    # "filter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->setFilterPosition(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1402
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3000(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v3

    rem-int v1, p1, v3

    .line 1403
    .local v1, "realPosition":I
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3100(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3000(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    iget-object v3, v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen$19;->this$0:Lcom/vk/attachpicker/screen/EditorScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/EditorScreen;->access$3000(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v2

    .line 1406
    .local v2, "wrappers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1408
    .local v0, "limit":I
    const/4 v3, -0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/vk/attachpicker/screen/EditorScreen$19;->getPosition(III)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->populateBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V

    .line 1409
    const/4 v3, -0x1

    invoke-direct {p0, v1, v0, v3}, Lcom/vk/attachpicker/screen/EditorScreen$19;->getPosition(III)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->populateBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V

    .line 1410
    const/4 v3, 0x1

    invoke-direct {p0, v1, v0, v3}, Lcom/vk/attachpicker/screen/EditorScreen$19;->getPosition(III)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->populateBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V

    .line 1411
    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/vk/attachpicker/screen/EditorScreen$19;->getPosition(III)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->populateBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V

    .line 1412
    return-void
.end method
