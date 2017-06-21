.class public Lcom/vk/attachpicker/screen/EditorScreen;
.super Lcom/vk/attachpicker/simplescreen/BaseScreen;
.source "EditorScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/screen/EditorScreen$Delegate;,
        Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;
    }
.end annotation


# static fields
.field public static final SCREEN_OPEN_DURATION:J = 0x15eL


# instance fields
.field private actionAuto:Landroid/view/View;

.field private actionCrop:Landroid/view/View;

.field private actionDrawing:Landroid/view/View;

.field private actionSticker:Landroid/view/View;

.field private actionText:Landroid/view/View;

.field private actionsPanel:Landroid/view/View;

.field private attachButton:Landroid/view/View;

.field private autoBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

.field private autoPanel:Landroid/widget/FrameLayout;

.field private autoSeekBar:Lcom/vk/attachpicker/widget/VkSeekBar;

.field private autoTextView:Landroid/widget/TextView;

.field private backgroundView:Landroid/widget/ImageView;

.field private bottomShadow:Landroid/view/View;

.field private final buttonClickLock:Lcom/vk/attachpicker/util/TimeoutLock;

.field private closeButton:Landroid/view/View;

.field private closeButtonContainer:Landroid/view/View;

.field private container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

.field private controlsEnabled:Z

.field private cropBgColor:I

.field private currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

.field private currentTask:Lcom/vk/attachpicker/util/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/util/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

.field private final delegate:Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

.field private deleteArea:Landroid/view/View;

.field private deleteIconHover:Landroid/view/View;

.field private drawingBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

.field private drawingColorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

.field private drawingPanel:Landroid/view/View;

.field private drawingUndo:Landroid/widget/ImageView;

.field private drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

.field private drawingWidth:Landroid/widget/ImageView;

.field private editorBgColor:I

.field private editorContainer:Landroid/widget/FrameLayout;

.field private final editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

.field private final entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

.field private filterTitle:Landroid/widget/TextView;

.field private final filtersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

.field private final imageState:Lcom/vk/attachpicker/editor/ImageState;

.field private layoutPagerPosition:I

.field private final locker:Lcom/vk/attachpicker/util/OrientationLocker;

.field private mainContainer:Landroid/widget/FrameLayout;

.field private overlayContainer:Landroid/widget/FrameLayout;

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

.field private pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

.field private pagerState:I

.field private screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

.field private shouldPlayOpenAnimation:Z

.field private stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

.field private stickersKeyboardContainer:Landroid/widget/FrameLayout;

.field private stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

.field private tempAutoValue:F

.field private final thumb:Z

.field private tooltip:Landroid/widget/TextView;

.field private tooltipController:Lcom/vk/attachpicker/util/TooltipController;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Lcom/vk/attachpicker/screen/EditorScreen$Delegate;Z)V
    .locals 4
    .param p1, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p2, "delegate"    # Lcom/vk/attachpicker/screen/EditorScreen$Delegate;
    .param p3, "thumb"    # Z

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;-><init>()V

    .line 62
    new-instance v0, Lcom/vk/attachpicker/EditorAnalytics;

    invoke-direct {v0}, Lcom/vk/attachpicker/EditorAnalytics;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    .line 64
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->buttonClickLock:Lcom/vk/attachpicker/util/TimeoutLock;

    .line 65
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/json/FiltersController;->filters()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filtersList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/OrientationLocker;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    .line 88
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    .line 1358
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$19;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$19;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 135
    new-instance v0, Lcom/vk/attachpicker/editor/ImageState;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/editor/ImageState;-><init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 136
    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->delegate:Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

    .line 137
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 138
    iput-boolean p3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->thumb:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/vk/attachpicker/screen/EditorScreen$Delegate;Z)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "delegate"    # Lcom/vk/attachpicker/screen/EditorScreen$Delegate;
    .param p3, "thumb"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;-><init>()V

    .line 62
    new-instance v0, Lcom/vk/attachpicker/EditorAnalytics;

    invoke-direct {v0}, Lcom/vk/attachpicker/EditorAnalytics;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    .line 64
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->buttonClickLock:Lcom/vk/attachpicker/util/TimeoutLock;

    .line 65
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/json/FiltersController;->filters()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filtersList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/OrientationLocker;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    .line 88
    sget-object v0, Lcom/vk/attachpicker/crop/CropAspectRatio;->CROP_NOT_SELECTED:Lcom/vk/attachpicker/crop/CropAspectRatio;

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    .line 1358
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$19;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$19;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 142
    new-instance v0, Lcom/vk/attachpicker/editor/ImageState;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/editor/ImageState;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 143
    iput-object p2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->delegate:Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 145
    iput-boolean p3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->thumb:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/FiltersViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/util/AsyncTask;)Lcom/vk/attachpicker/util/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Lcom/vk/attachpicker/util/AsyncTask;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->initUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/EditorStickerView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideStickers()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->showStickerTooltip()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->trackEmoji(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->trackStickers(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->loadImages()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/util/OrientationLocker;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->showDeleteArea(Z)V

    return-void
.end method

.method static synthetic access$2001(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    return-void
.end method

.method static synthetic access$2100(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/screen/EditorScreen$Delegate;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->delegate:Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vk/attachpicker/screen/EditorScreen;)F
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    return v0
.end method

.method static synthetic access$2500(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/VkSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoSeekBar:Lcom/vk/attachpicker/widget/VkSeekBar;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vk/attachpicker/screen/EditorScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/vk/attachpicker/screen/EditorScreen;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->updateFilter()V

    return-void
.end method

.method static synthetic access$2900(Lcom/vk/attachpicker/screen/EditorScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->layoutPagerPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideTooltip()V

    return-void
.end method

.method static synthetic access$3000(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filterTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->trackFilter(Z)V

    return-void
.end method

.method static synthetic access$3402(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/crop/CropAspectRatio;)Lcom/vk/attachpicker/crop/CropAspectRatio;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Lcom/vk/attachpicker/crop/CropAspectRatio;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/drawing/DrawingView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->backgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->cropCloseAnimation(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteIconHover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/screen/EditorScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen;->hideDeleteArea(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->openAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/editor/ImageState;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/screen/EditorScreen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->onStickerClick()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->onTextClick()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->onDrawingClick()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->onCropClick()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/vk/attachpicker/screen/EditorScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->onAutoClick()V

    return-void
.end method

.method private bottomPanelCloseAnimation(Landroid/view/View;)V
    .locals 14
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1227
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1228
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v5, v0}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 1229
    invoke-direct {p0, v10}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1231
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1233
    .local v1, "h":I
    invoke-virtual {p1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1234
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1239
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1240
    .local v3, "set1":Landroid/animation/AnimatorSet;
    new-array v5, v13, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v11, [F

    int-to-float v9, v1

    aput v9, v8, v10

    .line 1242
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    .line 1240
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1244
    new-instance v5, Lcom/vk/attachpicker/screen/EditorScreen$15;

    invoke-direct {v5, p0, p1, v1}, Lcom/vk/attachpicker/screen/EditorScreen$15;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1254
    sget-object v5, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1255
    const-wide/16 v6, 0xaf

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1257
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1258
    .local v4, "set2":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v11, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v10

    .line 1259
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v11, [F

    aput v12, v8, v10

    .line 1260
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v11, [F

    aput v12, v8, v10

    .line 1261
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v13

    .line 1258
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1263
    sget-object v5, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1264
    const-wide/16 v6, 0xaf

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1266
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1267
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-array v5, v13, [Landroid/animation/Animator;

    aput-object v3, v5, v10

    aput-object v4, v5, v11

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1268
    new-instance v5, Lcom/vk/attachpicker/screen/EditorScreen$16;

    invoke-direct {v5, p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen$16;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1276
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1277
    return-void
.end method

.method private varargs bottomPanelOpenAnimation(Landroid/view/View;[Ljava/lang/Runnable;)V
    .locals 12
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "runAfter"    # [Ljava/lang/Runnable;

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1174
    .local v0, "activity":Landroid/app/Activity;
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v5, v0}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 1175
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1177
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 1179
    .local v1, "h":I
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1180
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1182
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1185
    .local v3, "set1":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 1186
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v11, v1

    aput v11, v9, v10

    .line 1187
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    int-to-float v11, v1

    aput v11, v9, v10

    .line 1188
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1185
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1190
    sget-object v5, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1191
    const-wide/16 v6, 0xaf

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1192
    new-instance v5, Lcom/vk/attachpicker/screen/EditorScreen$13;

    invoke-direct {v5, p0, p1, v1}, Lcom/vk/attachpicker/screen/EditorScreen$13;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/view/View;I)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1203
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1204
    .local v4, "set2":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    .line 1205
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    .line 1206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v11, v1, v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1204
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1208
    sget-object v5, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1209
    const-wide/16 v6, 0xaf

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1211
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1212
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1213
    new-instance v5, Lcom/vk/attachpicker/screen/EditorScreen$14;

    invoke-direct {v5, p0, p2, v0}, Lcom/vk/attachpicker/screen/EditorScreen$14;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;[Ljava/lang/Runnable;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1223
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1224
    return-void
.end method

.method private cancelAutoEnhance()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    .line 720
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->setEnhanceIntensity(F)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoPanel:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelCloseAnimation(Landroid/view/View;)V

    .line 724
    return-void
.end method

.method private cancelDrawing()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->restoreState()V

    .line 728
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->setDrawingTouchEnabled(Z)V

    .line 729
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelCloseAnimation(Landroid/view/View;)V

    .line 730
    return-void
.end method

.method private checkButtonLock()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->buttonClickLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->buttonClickLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 714
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeAnimation()V
    .locals 14

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1120
    .local v7, "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v0, v7}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 1121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1123
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->overlayContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getBigBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1126
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->backgroundView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getBigBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1130
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1131
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1129
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v8

    .line 1134
    .local v8, "editorRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1135
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1136
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1134
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 1139
    .local v13, "viewerRect":Landroid/graphics/RectF;
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v9, v0, v1

    .line 1140
    .local v9, "scaleBefore":F
    iget v0, v13, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v12, v0, v1

    .line 1141
    .local v12, "translationYBefore":F
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 1143
    .local v11, "translationXBefore":F
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1144
    .local v10, "set":Landroid/animation/AnimatorSet;
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1146
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 1147
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->overlayContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    .line 1148
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v11, v4, v5

    .line 1149
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v12, v4, v5

    .line 1150
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v9, v4, v5

    .line 1151
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v9, v4, v5

    .line 1152
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 1153
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 1154
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1146
    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1156
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$12;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$12;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1166
    const-wide/16 v0, 0xaf

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1167
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->shouldPlayOpenAnimation:Z

    .line 1170
    return-void

    .line 1146
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1147
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private cropCloseAnimation(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "cropRect"    # Landroid/graphics/RectF;

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1318
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1320
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-static {p0, p1, v0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$30;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/graphics/RectF;Landroid/app/Activity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/util/Utils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1356
    return-void
.end method

.method private cropOpenAnimation(Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "onEnd"    # Ljava/lang/Runnable;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1281
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 1282
    invoke-direct {p0, v11}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1284
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    .line 1285
    .local v0, "ar":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    .line 1286
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sget v5, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v5, v5

    sget v6, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v6, v6

    .line 1285
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v7

    .line 1287
    .local v7, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    .line 1289
    .local v8, "scale":F
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1291
    .local v9, "set":Landroid/animation/AnimatorSet;
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->overlayContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v12, [F

    aput v13, v4, v11

    .line 1292
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v12, [F

    aput v8, v4, v11

    .line 1293
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v12, [F

    aput v8, v5, v11

    .line 1294
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v12, [F

    iget v6, v7, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    .line 1295
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    aput v6, v5, v11

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v12, [F

    iget v6, v7, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    .line 1296
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    aput v6, v5, v11

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v13, v5, v11

    .line 1297
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v12, [F

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 1298
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v11

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v12, [F

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 1299
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v11

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    sget-object v4, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->BACKGROUND_COLOR:Landroid/util/Property;

    new-array v5, v12, [I

    iget v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->cropBgColor:I

    aput v6, v5, v11

    .line 1300
    invoke-static {v3, v4, v5}, Lcom/vk/attachpicker/util/AnimationUtils;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1291
    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1303
    sget-object v1, Lcom/vk/attachpicker/util/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1304
    const-wide/16 v2, 0xaf

    invoke-virtual {v9, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1306
    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$17;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$17;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1313
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 1314
    return-void
.end method

.method private getCenterFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    .locals 3

    .prologue
    .line 790
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/FiltersViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 791
    .local v0, "currentPositon":I
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    return-object v1
.end method

.method private getLeftFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    .locals 3

    .prologue
    .line 781
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/FiltersViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 782
    .local v0, "currentPositon":I
    if-nez v0, :cond_0

    .line 783
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    .line 785
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    goto :goto_0
.end method

.method private getRightFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    .locals 3

    .prologue
    .line 795
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/FiltersViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 796
    .local v0, "currentPositon":I
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    .line 799
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getFilterWrappers()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    goto :goto_0
.end method

.method private hideDeleteArea(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 436
    :cond_0
    if-eqz p1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$2;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/EditorScreen$2;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 441
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 447
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private hideStickers()V
    .locals 4

    .prologue
    .line 833
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$7;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/EditorScreen$7;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    .line 837
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 843
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private hideTooltip()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TooltipController;->hideTooltip()V

    .line 391
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->cancelFakeSwipe()V

    .line 392
    return-void
.end method

.method private initUi()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 745
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f1002f6

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, "progress":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 751
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 754
    :cond_1
    new-instance v1, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    .line 755
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setImage(Landroid/graphics/Bitmap;)V

    .line 758
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 759
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->backgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 760
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->updateFilter()V

    .line 762
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 764
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->showFiltersTooltip()V

    goto :goto_0
.end method

.method private isDefaultFilter()Z
    .locals 2

    .prologue
    .line 804
    const-string/jumbo v0, "FILTER_ID_ORIGINAL"

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getCenterFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDrawingPanelVisible()Z
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnhancePanelVisible()Z
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$$$118(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1479
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$createView$85(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 155
    return-void
.end method

.method static synthetic lambda$finish$108(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .prologue
    .line 698
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$updateFilter$109(Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;)Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    .locals 0

    .prologue
    .line 771
    return-object p0
.end method

.method private loadImages()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/AsyncTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 811
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$6;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/screen/EditorScreen$6;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    .line 824
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/AsyncTask;->execPool([Ljava/lang/Object;)Lcom/vk/attachpicker/util/AsyncTask;

    goto :goto_0
.end method

.method private onAutoClick()V
    .locals 4

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideTooltip()V

    .line 1028
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    if-eqz v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    .line 1034
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoSeekBar:Lcom/vk/attachpicker/widget/VkSeekBar;

    iget v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/VkSeekBar;->setValue(F)V

    .line 1035
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$29;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelOpenAnimation(Landroid/view/View;[Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onCropClick()V
    .locals 1

    .prologue
    .line 980
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideTooltip()V

    .line 981
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    if-eqz v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$28;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->cropOpenAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onDrawingClick()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 967
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideTooltip()V

    .line 968
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    if-eqz v0, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->saveState()V

    .line 975
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->setDrawingTouchEnabled(Z)V

    .line 976
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingPanel:Landroid/view/View;

    new-array v1, v1, [Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$27;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelOpenAnimation(Landroid/view/View;[Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 973
    goto :goto_1
.end method

.method private onStickerClick()V
    .locals 4

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideTooltip()V

    .line 848
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    if-eqz v1, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 853
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 858
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    if-nez v1, :cond_2

    .line 859
    new-instance v1, Lcom/vk/attachpicker/stickers/EditorStickerView;

    new-instance v2, Lcom/vk/attachpicker/screen/EditorScreen$8;

    invoke-direct {v2, p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen$8;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;)V

    invoke-direct {v1, v0, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 933
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->setTopPadding(I)V

    .line 934
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->setVisibility(I)V

    .line 936
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->addView(Landroid/view/View;)V

    .line 939
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->setAlpha(F)V

    .line 940
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/EditorStickerView;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->checkSelection()V

    .line 942
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private onTextClick()V
    .locals 4

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideTooltip()V

    .line 947
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerState:I

    if-eqz v0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 953
    new-instance v0, Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$25;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/stickers/TextStickerDialog;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .line 958
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$26;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 962
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->show()V

    goto :goto_0
.end method

.method private openAnimation()V
    .locals 14

    .prologue
    .line 1065
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 1066
    .local v7, "activity":Landroid/app/Activity;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->locker:Lcom/vk/attachpicker/util/OrientationLocker;

    invoke-virtual {v0, v7}, Lcom/vk/attachpicker/util/OrientationLocker;->lockOrientation(Landroid/app/Activity;)V

    .line 1067
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1069
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1070
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1071
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1069
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v8

    .line 1074
    .local v8, "editorRect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1075
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 1076
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1074
    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 1079
    .local v13, "viewerRect":Landroid/graphics/RectF;
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v9, v0, v1

    .line 1080
    .local v9, "scaleBefore":F
    iget v0, v13, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    sub-float v12, v0, v1

    .line 1081
    .local v12, "translationYBefore":F
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 1083
    .local v11, "translationXBefore":F
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1084
    .local v10, "set":Landroid/animation/AnimatorSet;
    sget-object v0, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1086
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1087
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1088
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1089
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1090
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1091
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1092
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1093
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    .line 1094
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v11, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1095
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v12, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1096
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v9, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 1097
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v9, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 1098
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 1099
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 1100
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1093
    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1102
    new-instance v0, Lcom/vk/attachpicker/screen/EditorScreen$11;

    invoke-direct {v0, p0, v7}, Lcom/vk/attachpicker/screen/EditorScreen$11;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;)V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1111
    const-wide/16 v0, 0xaf

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1112
    const-wide/16 v0, 0x10

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1113
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->shouldPlayOpenAnimation:Z

    .line 1116
    return-void

    .line 1093
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private renderAndFinish(Z)V
    .locals 7
    .param p1, "avatarSelection"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 457
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 458
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v5}, Lcom/vk/attachpicker/drawing/DrawingView;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v5}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 463
    invoke-virtual {v5}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v5}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultState()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 464
    invoke-virtual {v5}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    move v2, v3

    .line 466
    .local v2, "isDefault":Z
    :goto_1
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/screen/EditorScreen;->trackStickers(Z)V

    .line 467
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/screen/EditorScreen;->trackEmoji(Z)V

    .line 468
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/screen/EditorScreen;->trackText(Z)V

    .line 469
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v5}, Lcom/vk/attachpicker/drawing/DrawingView;->isDefault()Z

    move-result v5

    if-nez v5, :cond_1

    .line 470
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/screen/EditorScreen;->trackDraw(Z)V

    .line 472
    :cond_1
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v5}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v5}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultState()Z

    move-result v5

    if-nez v5, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->trackCrop()V

    .line 475
    :cond_2
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isDefaultFilter()Z

    move-result v5

    if-nez v5, :cond_3

    .line 476
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/screen/EditorScreen;->trackFilter(Z)V

    .line 478
    :cond_3
    iget-object v5, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v5}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 479
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/screen/EditorScreen;->trackEnhance(Z)V

    .line 481
    :cond_4
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v3}, Lcom/vk/attachpicker/EditorAnalytics;->flush()V

    .line 483
    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$21;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vkcoffee/android/functions/F0;

    move-result-object v1

    .line 513
    .local v1, "bitmapRenderer":Lcom/vkcoffee/android/functions/F0;, "Lcom/vkcoffee/android/functions/F0<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_6

    .line 514
    new-instance v3, Lcom/vk/attachpicker/screen/EditorScreen$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/vk/attachpicker/screen/EditorScreen$3;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;Lcom/vkcoffee/android/functions/F0;)V

    new-array v4, v4, [Ljava/lang/Void;

    .line 547
    invoke-virtual {v3, v4}, Lcom/vk/attachpicker/screen/EditorScreen$3;->execPool([Ljava/lang/Object;)Lcom/vk/attachpicker/util/AsyncTask;

    goto/16 :goto_0

    .end local v1    # "bitmapRenderer":Lcom/vkcoffee/android/functions/F0;, "Lcom/vkcoffee/android/functions/F0<Landroid/graphics/Bitmap;>;"
    .end local v2    # "isDefault":Z
    :cond_5
    move v2, v4

    .line 464
    goto :goto_1

    .line 549
    .restart local v1    # "bitmapRenderer":Lcom/vkcoffee/android/functions/F0;, "Lcom/vkcoffee/android/functions/F0<Landroid/graphics/Bitmap;>;"
    .restart local v2    # "isDefault":Z
    :cond_6
    new-instance v3, Lcom/vk/attachpicker/screen/EditorScreen$4;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen$4;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;Lcom/vkcoffee/android/functions/F0;Z)V

    new-array v4, v4, [Ljava/lang/Void;

    .line 600
    invoke-virtual {v3, v4}, Lcom/vk/attachpicker/screen/EditorScreen$4;->execPool([Ljava/lang/Object;)Lcom/vk/attachpicker/util/AsyncTask;

    goto/16 :goto_0
.end method

.method private setControlsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->controlsEnabled:Z

    .line 735
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->attachButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionSticker:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionText:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionDrawing:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionCrop:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 741
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionAuto:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 742
    return-void
.end method

.method private setDrawingTouchEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 828
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->setTouchEnabled(Z)V

    .line 829
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->setTouchEnabled(Z)V

    .line 830
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDeleteArea(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteIconHover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 421
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 423
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 424
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 425
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showFiltersTooltip()V
    .locals 2

    .prologue
    .line 395
    const-string/jumbo v0, "filters_tooltip"

    invoke-static {v0}, Lcom/vk/attachpicker/util/TooltipController;->shouldShowTooltip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/FiltersViewPager;->showFakeSwipe()V

    .line 397
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltip:Landroid/widget/TextView;

    const v1, 0x7f08038d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TooltipController;->showTooltip()V

    .line 400
    :cond_0
    return-void
.end method

.method private showStickerTooltip()V
    .locals 2

    .prologue
    .line 403
    const-string/jumbo v0, "sticker_tooltip"

    invoke-static {v0}, Lcom/vk/attachpicker/util/TooltipController;->shouldShowTooltip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltip:Landroid/widget/TextView;

    const v1, 0x7f08038f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TooltipController;->showTooltip()V

    .line 407
    :cond_0
    return-void
.end method

.method private showTextTooltip()V
    .locals 2

    .prologue
    .line 410
    const-string/jumbo v0, "text_tooltip"

    invoke-static {v0}, Lcom/vk/attachpicker/util/TooltipController;->shouldShowTooltip(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltip:Landroid/widget/TextView;

    const v1, 0x7f080390

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TooltipController;->showTooltip()V

    .line 414
    :cond_0
    return-void
.end method

.method private trackCrop()V
    .locals 4

    .prologue
    .line 1528
    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$35;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1529
    return-void
.end method

.method private trackDraw(Z)V
    .locals 4
    .param p1, "isFinal"    # Z

    .prologue
    .line 1540
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$38;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1541
    return-void
.end method

.method private trackEmoji(Z)V
    .locals 4
    .param p1, "isFinal"    # Z

    .prologue
    .line 1502
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$33;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1514
    return-void
.end method

.method private trackEnhance(Z)V
    .locals 4
    .param p1, "isFinal"    # Z

    .prologue
    .line 1536
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$37;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1537
    return-void
.end method

.method private trackFilter(Z)V
    .locals 4
    .param p1, "isFinal"    # Z

    .prologue
    .line 1532
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$36;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1533
    return-void
.end method

.method private trackStickers(Z)V
    .locals 4
    .param p1, "isFinal"    # Z

    .prologue
    .line 1484
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$32;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1499
    return-void
.end method

.method private trackText(Z)V
    .locals 4
    .param p1, "isFinal"    # Z

    .prologue
    .line 1517
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$34;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Z)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 1525
    return-void
.end method

.method private updateFilter()V
    .locals 5

    .prologue
    .line 768
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    if-eqz v1, :cond_0

    .line 769
    new-instance v0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getAutoFixedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getLeftFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    move-result-object v2

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getCenterFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    move-result-object v3

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getRightFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;-><init>(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V

    .line 770
    .local v0, "filter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    iget v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->setEnhanceIntensity(F)V

    .line 771
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$24;->lambdaFactory$(Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;)Lcom/vk/attachpicker/imageeditor/FilterProducer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setFilter(Lcom/vk/attachpicker/imageeditor/FilterProducer;)V

    .line 773
    .end local v0    # "filter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/FiltersViewPager;->getCurrentItem()I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->layoutPagerPosition:I

    .line 774
    return-void
.end method


# virtual methods
.method public final $(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final $(ILjava/lang/Runnable;)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1478
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    invoke-virtual {v1, p1}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1479
    .local v0, "view":Landroid/view/View;, "TT;"
    invoke-static {p2}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$31;->lambdaFactory$(Ljava/lang/Runnable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1480
    return-object v0
.end method

.method public createView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0075

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorBgColor:I

    .line 151
    const/4 v1, -0x1

    iput v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->cropBgColor:I

    .line 153
    new-instance v1, Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    .line 154
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    iget v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorBgColor:I

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->setBackgroundColor(I)V

    .line 155
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    invoke-static {}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v1, 0x7f030128

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 159
    const v1, 0x7f100341

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    .line 160
    const v1, 0x7f100342

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButton:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f100343

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersKeyboardContainer:Landroid/widget/FrameLayout;

    .line 170
    const v1, 0x7f10032a

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    .line 171
    const v1, 0x7f1002f0

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    .line 172
    const v1, 0x7f10032c

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorContainer:Landroid/widget/FrameLayout;

    .line 173
    const v1, 0x7f10032b

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->overlayContainer:Landroid/widget/FrameLayout;

    .line 174
    const v1, 0x7f10032d

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .line 176
    const v1, 0x7f10032f

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltip:Landroid/widget/TextView;

    .line 177
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltip:Landroid/widget/TextView;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v2

    const/16 v3, 0x90

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 178
    new-instance v1, Lcom/vk/attachpicker/util/TooltipController;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltip:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/util/TooltipController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tooltipController:Lcom/vk/attachpicker/util/TooltipController;

    .line 180
    const v1, 0x7f10032e

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filterTitle:Landroid/widget/TextView;

    .line 181
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filterTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 182
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filterTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080378

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v1, 0x7f100330

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    .line 185
    const v1, 0x7f100332

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->$(ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionSticker:Landroid/view/View;

    .line 186
    const v1, 0x7f100333

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->$(ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionText:Landroid/view/View;

    .line 187
    const v1, 0x7f100334

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->$(ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionDrawing:Landroid/view/View;

    .line 188
    const v1, 0x7f100335

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->$(ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionCrop:Landroid/view/View;

    .line 189
    const v1, 0x7f100336

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$7;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->$(ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionAuto:Landroid/view/View;

    .line 190
    const v1, 0x7f1002e7

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    .line 192
    const v1, 0x7f10033b

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoPanel:Landroid/widget/FrameLayout;

    .line 193
    const v1, 0x7f10033c

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoTextView:Landroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v1, 0x7f10033d

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/VkSeekBar;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoSeekBar:Lcom/vk/attachpicker/widget/VkSeekBar;

    .line 196
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoSeekBar:Lcom/vk/attachpicker/widget/VkSeekBar;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$8;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/VkSeekBar;->setOnSeekBarChangeListener(Lcom/vk/attachpicker/widget/VkSeekBar$OnSeekBarChangeListener;)V

    .line 209
    const v1, 0x7f10033e

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/EditorBottomPanel;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    .line 210
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$9;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnApplyClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$10;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v1, 0x7f1002e6

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/drawing/DrawingView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    .line 226
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$11;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/drawing/DrawingView;->setOnDownListener(Lcom/vk/attachpicker/drawing/DrawingView$OnDownListener;)V

    .line 229
    const v1, 0x7f10033f

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingPanel:Landroid/view/View;

    .line 230
    const v1, 0x7f100340

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/EditorBottomPanel;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    .line 231
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$12;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnCancelClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$13;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setOnApplyClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v1, 0x7f1002e9

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/ColorSelectorView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingColorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    .line 244
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingColorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$14;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/ColorSelectorView;->setOnColorSelectedListener(Lcom/vk/attachpicker/widget/ColorSelectorView$OnColorSelectedListener;)V

    .line 248
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    .line 249
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    const v2, 0x7f020282

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    const v2, 0x7f0f0074

    invoke-static {v2}, Lcom/vk/attachpicker/Picker;->color(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 251
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    const v2, 0x7f0202b3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 252
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$15;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$16;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 262
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 263
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingBottomPanel:Lcom/vk/attachpicker/widget/EditorBottomPanel;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/EditorBottomPanel;->setCenterView(Landroid/view/View;)V

    .line 265
    const v1, 0x7f1002e8

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$17;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/screen/EditorScreen;->$(ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingWidth:Landroid/widget/ImageView;

    .line 272
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$18;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->setOnTextStickerClickListener(Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;)V

    .line 311
    const v1, 0x7f100303

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/widget/FiltersViewPager;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    .line 312
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/FiltersViewPager;->setPageMargin(I)V

    .line 313
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    const v2, 0x7f020275

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/FiltersViewPager;->setPageMarginDrawable(I)V

    .line 315
    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->filtersList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    .line 316
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/FiltersViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 317
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v3}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pagerAdapter:Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;

    invoke-virtual {v4}, Lcom/vk/attachpicker/screen/EditorScreen$FiltersAdapter;->getRealCount()I

    move-result v4

    div-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/vk/attachpicker/widget/FiltersViewPager;->setCurrentItem(IZ)V

    .line 318
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/FiltersViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 319
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/FiltersViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 321
    const v1, 0x7f100337

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->attachButton:Landroid/view/View;

    .line 322
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->attachButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$19;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    const v1, 0x7f100338

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteArea:Landroid/view/View;

    .line 327
    const v1, 0x7f10033a

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->deleteIconHover:Landroid/view/View;

    .line 328
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    new-instance v2, Lcom/vk/attachpicker/screen/EditorScreen$1;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/screen/EditorScreen$1;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->setOnStickerMoveListener(Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;)V

    .line 364
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$20;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->setInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    const v1, 0x7f10031f

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->backgroundView:Landroid/widget/ImageView;

    .line 374
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    if-eqz v1, :cond_0

    .line 375
    sget-object v1, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v2}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    .local v0, "tmpImage":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-static {v0}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 378
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->shouldPlayOpenAnimation:Z

    .line 383
    .end local v0    # "tmpImage":Landroid/graphics/Bitmap;
    :cond_0
    invoke-direct {p0, v5}, Lcom/vk/attachpicker/screen/EditorScreen;->hideDeleteArea(Z)V

    .line 384
    invoke-direct {p0, v5}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    return-object v1
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 681
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    .line 682
    invoke-virtual {v1}, Lcom/vk/attachpicker/drawing/DrawingView;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .line 683
    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isDefaultFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 685
    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    .line 686
    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 688
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    .local v0, "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 690
    const v1, 0x7f08036a

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 691
    const v1, 0x7f080394

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$22;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 698
    const v1, 0x7f080376

    invoke-static {}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$23;->lambdaFactory$()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    invoke-virtual {v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 707
    .end local v0    # "builder":Lcom/vkcoffee/android/VKAlertDialog$Builder;
    :goto_0
    return-void

    .line 702
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->delegate:Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

    if-eqz v1, :cond_3

    .line 703
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->closeAnimation()V

    goto :goto_0

    .line 705
    :cond_3
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    goto :goto_0
.end method

.method synthetic lambda$createView$103(Lcom/vk/attachpicker/stickers/TextSticker;)V
    .locals 6
    .param p1, "textSticker"    # Lcom/vk/attachpicker/stickers/TextSticker;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 278
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$40;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 285
    new-instance v0, Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 286
    invoke-virtual {p1}, Lcom/vk/attachpicker/stickers/TextSticker;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vk/attachpicker/stickers/TextSticker;->getColor()I

    move-result v3

    .line 287
    invoke-virtual {p1}, Lcom/vk/attachpicker/stickers/TextSticker;->getStickerFont()Lcom/vk/attachpicker/stickers/StickerFont;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$41;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/stickers/TextStickerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;Lcom/vk/attachpicker/stickers/TextStickerDialog$TextStickerDialogCallback;)V

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .line 298
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$42;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 307
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->show()V

    goto :goto_0
.end method

.method synthetic lambda$createView$104(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->thumb:Z

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->renderAndFinish(Z)V

    .line 324
    return-void
.end method

.method synthetic lambda$createView$105(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isDrawingPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0, p2}, Lcom/vk/attachpicker/drawing/DrawingView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 370
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->pager:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-virtual {v0, p2}, Lcom/vk/attachpicker/widget/FiltersViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method synthetic lambda$createView$86(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 162
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButton:Landroid/view/View;

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->finish()V

    .line 167
    :cond_0
    return-void
.end method

.method synthetic lambda$createView$87(Lcom/vk/attachpicker/widget/VkSeekBar;F)V
    .locals 4
    .param p1, "bar"    # Lcom/vk/attachpicker/widget/VkSeekBar;
    .param p2, "value"    # F

    .prologue
    .line 197
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 199
    .local v0, "v":I
    if-nez v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->setEnhanceIntensity(F)V

    .line 205
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender()V

    .line 207
    .end local v0    # "v":I
    :cond_0
    iput p2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    .line 208
    return-void

    .line 202
    .restart local v0    # "v":I
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method synthetic lambda$createView$88(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    iget v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->tempAutoValue:F

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/editor/ImageState;->setAutoEnhanceValue(F)V

    .line 215
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoPanel:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelCloseAnimation(Landroid/view/View;)V

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->trackEnhance(Z)V

    goto :goto_0
.end method

.method synthetic lambda$createView$89(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->cancelAutoEnhance()V

    goto :goto_0
.end method

.method synthetic lambda$createView$90()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$createView$91(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->checkButtonLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->cancelDrawing()V

    goto :goto_0
.end method

.method synthetic lambda$createView$92(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->saveState()V

    .line 239
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->setDrawingTouchEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->bottomPanelCloseAnimation(Landroid/view/View;)V

    .line 241
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->trackDraw(Z)V

    .line 242
    return-void
.end method

.method synthetic lambda$createView$93(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/drawing/DrawingView;->setPaintStrokeColor(I)V

    .line 246
    return-void
.end method

.method synthetic lambda$createView$94(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->undo()V

    .line 255
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 256
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$createView$95(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/drawing/DrawingView;->clear()V

    .line 259
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingUndo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$createView$97()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingWidth:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingColorSelectorView:Lcom/vk/attachpicker/widget/ColorSelectorView;

    .line 267
    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/ColorSelectorView;->getSelectedColor()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    .line 268
    invoke-virtual {v2}, Lcom/vk/attachpicker/drawing/DrawingView;->getWidthMultiplier()F

    move-result v2

    invoke-static {v2}, Lcom/vk/attachpicker/drawing/DrawingState;->findIntIndex(F)I

    move-result v2

    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$45;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    move-result-object v3

    .line 266
    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/widget/WidthSelectorView;->show(Landroid/view/View;IILcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;)V

    .line 270
    return-void
.end method

.method synthetic lambda$cropCloseAnimation$117(Landroid/graphics/RectF;Landroid/app/Activity;)V
    .locals 13

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1321
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getAspectRatio()F

    move-result v0

    .line 1322
    .local v0, "ar":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->mainContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v7

    .line 1324
    .local v7, "editorRect":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float v8, v1, v2

    .line 1326
    .local v8, "scale":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v4, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setTranslationX(F)V

    .line 1327
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v4, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setTranslationY(F)V

    .line 1328
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v1, v8}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setScaleX(F)V

    .line 1329
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v1, v8}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->setScaleY(F)V

    .line 1331
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1333
    .local v9, "set":Landroid/animation/AnimatorSet;
    const/16 v1, 0x9

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->overlayContainer:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v12, [F

    aput v10, v5, v11

    .line 1334
    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v12, [F

    aput v10, v5, v11

    .line 1335
    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {v2}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v10, v6, v11

    .line 1336
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v3, v6, v11

    .line 1337
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v12, [F

    aput v3, v6, v11

    .line 1338
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    aput v10, v6, v11

    .line 1339
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->screenView:Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    sget-object v5, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->BACKGROUND_COLOR:Landroid/util/Property;

    new-array v6, v12, [I

    iget v10, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorBgColor:I

    aput v10, v6, v11

    .line 1340
    invoke-static {v4, v5, v6}, Lcom/vk/attachpicker/util/AnimationUtils;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->accelerate(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x7

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->actionsPanel:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v3, v6, v11

    .line 1341
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-static {v4}, Lcom/vk/attachpicker/util/AnimationUtils;->decelerate2(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x8

    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->bottomShadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v12, [F

    aput v3, v6, v11

    .line 1342
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Lcom/vk/attachpicker/util/AnimationUtils;->decelerate2(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1333
    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1344
    const-wide/16 v2, 0xaf

    invoke-virtual {v9, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1346
    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$18;

    invoke-direct {v1, p0, p2}, Lcom/vk/attachpicker/screen/EditorScreen$18;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;Landroid/app/Activity;)V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1354
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 1355
    return-void
.end method

.method synthetic lambda$finish$107(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->delegate:Lcom/vk/attachpicker/screen/EditorScreen$Delegate;

    if-eqz v0, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->closeAnimation()V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->finish()V

    goto :goto_0
.end method

.method synthetic lambda$null$100(Lcom/vk/attachpicker/stickers/TextSticker;Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V
    .locals 4
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "typeface"    # Lcom/vk/attachpicker/stickers/StickerFont;

    .prologue
    .line 289
    invoke-virtual {p1, p2}, Lcom/vk/attachpicker/stickers/TextSticker;->setText(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1, p3}, Lcom/vk/attachpicker/stickers/TextSticker;->setColor(I)V

    .line 291
    invoke-virtual {p1, p4}, Lcom/vk/attachpicker/stickers/TextSticker;->setTypeface(Lcom/vk/attachpicker/stickers/StickerFont;)V

    .line 293
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$44;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 297
    return-void
.end method

.method synthetic lambda$null$101(Lcom/vk/attachpicker/stickers/TextSticker;)V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/stickers/TextSticker;->setInEditMode(Z)V

    .line 304
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 305
    return-void
.end method

.method synthetic lambda$null$102(Lcom/vk/attachpicker/stickers/TextSticker;Landroid/content/DialogInterface;)V
    .locals 4
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .line 302
    invoke-static {p0, p1}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$43;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;Lcom/vk/attachpicker/stickers/TextSticker;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    .line 306
    return-void
.end method

.method synthetic lambda$null$115(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1040
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1041
    .local v0, "value":F
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->autoSeekBar:Lcom/vk/attachpicker/widget/VkSeekBar;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/widget/VkSeekBar;->setValue(F)V

    .line 1042
    return-void
.end method

.method synthetic lambda$null$96(I)V
    .locals 2
    .param p1, "widthIndex"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/drawing/DrawingView;->setWidthMultiplier(F)V

    return-void
.end method

.method synthetic lambda$null$98(Lcom/vk/attachpicker/stickers/TextSticker;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/stickers/TextSticker;->setInEditMode(Z)V

    .line 281
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 283
    :cond_0
    return-void
.end method

.method synthetic lambda$null$99(Lcom/vk/attachpicker/stickers/TextSticker;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/stickers/TextSticker;->setInEditMode(Z)V

    .line 295
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 296
    return-void
.end method

.method synthetic lambda$onAutoClick$116()V
    .locals 4

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1037
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/screen/EditorScreen;->setControlsEnabled(Z)V

    .line 1038
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1039
    .local v0, "enhanceAnimation":Landroid/animation/ValueAnimator;
    invoke-static {p0}, Lcom/vk/attachpicker/screen/EditorScreen$$Lambda$39;->lambdaFactory$(Lcom/vk/attachpicker/screen/EditorScreen;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1043
    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$10;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/EditorScreen$10;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1049
    sget-object v1, Lcom/vk/attachpicker/util/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1050
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1051
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1053
    .end local v0    # "enhanceAnimation":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    .line 1038
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method

.method synthetic lambda$onCropClick$114()V
    .locals 4

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 990
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/screen/CropScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    new-instance v2, Lcom/vk/attachpicker/screen/EditorScreen$9;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/screen/EditorScreen$9;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentCropAspectRatio:Lcom/vk/attachpicker/crop/CropAspectRatio;

    invoke-direct {v0, v1, v2, v3}, Lcom/vk/attachpicker/screen/CropScreen;-><init>(Lcom/vk/attachpicker/editor/ImageState;Lcom/vk/attachpicker/screen/CropScreen$Delegate;Lcom/vk/attachpicker/crop/CropAspectRatio;)V

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    goto :goto_0
.end method

.method synthetic lambda$onDrawingClick$113()V
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->setDrawingTouchEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onTextClick$111(Ljava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "typeface"    # Lcom/vk/attachpicker/stickers/StickerFont;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    new-instance v1, Lcom/vk/attachpicker/stickers/TextSticker;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/vk/attachpicker/stickers/TextSticker;-><init>(ILjava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->addStickerView(Lcom/vk/attachpicker/stickers/Sticker;)V

    .line 955
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->showTextTooltip()V

    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/screen/EditorScreen;->trackText(Z)V

    .line 957
    return-void
.end method

.method synthetic lambda$onTextClick$112(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    .line 961
    return-void
.end method

.method synthetic lambda$renderAndFinish$106()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/16 v6, 0x438

    .line 484
    sget-object v7, Lcom/vk/attachpicker/util/GcTrigger;->DEFAULT:Lcom/vk/attachpicker/util/GcTrigger;

    invoke-interface {v7}, Lcom/vk/attachpicker/util/GcTrigger;->runGc()V

    .line 486
    iget-object v7, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v8

    if-le v8, v6, :cond_0

    const/16 v6, 0x5a0

    :cond_0
    invoke-virtual {v7, v6}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 487
    .local v1, "croppedBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getCenterFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    move-result-object v3

    .line 488
    .local v3, "f":Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v6}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 489
    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageState:Lcom/vk/attachpicker/editor/ImageState;

    invoke-virtual {v6}, Lcom/vk/attachpicker/editor/ImageState;->getAutoEnhanceValue()F

    move-result v6

    invoke-static {v1, v6}, Lcom/vk/attachpicker/jni/Native;->enhanceBitmap(Landroid/graphics/Bitmap;F)V

    .line 491
    :cond_1
    const-string/jumbo v6, "FILTER_ID_ORIGINAL"

    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->getCenterFilter()Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    move-result-object v7

    iget-object v7, v7, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 492
    iget-object v6, v3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget-object v6, v6, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getNonDefaultColorsCount(Ljava/util/List;IZ)I

    move-result v6

    if-lez v6, :cond_2

    .line 493
    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->getBigLookupBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 494
    .local v4, "lut":Landroid/graphics/Bitmap;
    invoke-static {v1, v4}, Lcom/vk/attachpicker/jni/Native;->lookupBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 495
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 499
    .end local v4    # "lut":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 501
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->drawingView:Lcom/vk/attachpicker/drawing/DrawingView;

    invoke-virtual {v6}, Lcom/vk/attachpicker/drawing/DrawingView;->getDrawingStateCopy()Lcom/vk/attachpicker/drawing/DrawingState;

    move-result-object v2

    .line 502
    .local v2, "ds":Lcom/vk/attachpicker/drawing/DrawingState;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Lcom/vk/attachpicker/drawing/DrawingState;->handleSizeChange(FF)V

    .line 503
    invoke-virtual {v2, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->draw(Landroid/graphics/Canvas;)V

    .line 505
    iget-object v6, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v6}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getDrawingState()Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-result-object v5

    .line 506
    .local v5, "sds":Lcom/vk/attachpicker/stickers/StickersDrawingState;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->handleSizeChange(II)V

    .line 507
    invoke-virtual {v5, v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->draw(Landroid/graphics/Canvas;)V

    .line 509
    return-object v1
.end method

.method synthetic lambda$trackCrop$122()V
    .locals 2

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/EditorAnalytics;->logCrop(Z)V

    return-void
.end method

.method synthetic lambda$trackDraw$125(Z)V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logDraw(Z)V

    return-void
.end method

.method synthetic lambda$trackEmoji$120(Z)V
    .locals 5

    .prologue
    .line 1503
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v3}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getDrawingState()Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->getStickers()Ljava/util/ArrayList;

    move-result-object v2

    .line 1504
    .local v2, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/stickers/Sticker;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/stickers/Sticker;

    .line 1505
    .local v1, "s":Lcom/vk/attachpicker/stickers/Sticker;
    instance-of v4, v1, Lcom/vk/attachpicker/stickers/BitmapSticker;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1506
    check-cast v0, Lcom/vk/attachpicker/stickers/BitmapSticker;

    .line 1507
    .local v0, "bs":Lcom/vk/attachpicker/stickers/BitmapSticker;
    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/BitmapSticker;->getMetaInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1508
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v3, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logEmoji(Z)V

    .line 1513
    .end local v0    # "bs":Lcom/vk/attachpicker/stickers/BitmapSticker;
    .end local v1    # "s":Lcom/vk/attachpicker/stickers/Sticker;
    :cond_1
    return-void
.end method

.method synthetic lambda$trackEnhance$124(Z)V
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logEnhance(Z)V

    return-void
.end method

.method synthetic lambda$trackFilter$123(Z)V
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logFilter(Z)V

    return-void
.end method

.method synthetic lambda$trackStickers$119(Z)V
    .locals 6

    .prologue
    .line 1485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    .local v2, "stickerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v4}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getDrawingState()Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->getStickers()Ljava/util/ArrayList;

    move-result-object v3

    .line 1487
    .local v3, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/stickers/Sticker;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/stickers/Sticker;

    .line 1488
    .local v1, "s":Lcom/vk/attachpicker/stickers/Sticker;
    instance-of v5, v1, Lcom/vk/attachpicker/stickers/BitmapSticker;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 1489
    check-cast v0, Lcom/vk/attachpicker/stickers/BitmapSticker;

    .line 1490
    .local v0, "bs":Lcom/vk/attachpicker/stickers/BitmapSticker;
    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/BitmapSticker;->getMetaInfo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1491
    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/BitmapSticker;->getMetaInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1495
    .end local v0    # "bs":Lcom/vk/attachpicker/stickers/BitmapSticker;
    .end local v1    # "s":Lcom/vk/attachpicker/stickers/Sticker;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1496
    iget-object v4, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v4, v2, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logStickers(Ljava/util/Collection;Z)V

    .line 1498
    :cond_2
    return-void
.end method

.method synthetic lambda$trackText$121(Z)V
    .locals 4

    .prologue
    .line 1518
    iget-object v2, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersDrawingView:Lcom/vk/attachpicker/stickers/StickersDrawingView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getDrawingState()Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->getStickers()Ljava/util/ArrayList;

    move-result-object v1

    .line 1519
    .local v1, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/stickers/Sticker;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/stickers/Sticker;

    .line 1520
    .local v0, "s":Lcom/vk/attachpicker/stickers/Sticker;
    instance-of v3, v0, Lcom/vk/attachpicker/stickers/TextSticker;

    if-eqz v3, :cond_0

    .line 1521
    iget-object v3, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorStatistics:Lcom/vk/attachpicker/EditorAnalytics;

    invoke-virtual {v3, p1}, Lcom/vk/attachpicker/EditorAnalytics;->logText(Z)V

    goto :goto_0

    .line 1524
    .end local v0    # "s":Lcom/vk/attachpicker/stickers/Sticker;
    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 657
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->controlsEnabled:Z

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 659
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->hideStickers()V

    .line 675
    :cond_0
    :goto_0
    return v1

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTextDialog:Lcom/vk/attachpicker/stickers/TextStickerDialog;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/TextStickerDialog;->dismiss()V

    goto :goto_0

    .line 664
    :cond_2
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isEnhancePanelVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->cancelAutoEnhance()V

    goto :goto_0

    .line 667
    :cond_3
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->isDrawingPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 668
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->cancelDrawing()V

    goto :goto_0

    .line 671
    :cond_4
    invoke-virtual {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onDestroy()V

    .line 636
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/AsyncTask;->cancel()V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->currentTask:Lcom/vk/attachpicker/util/AsyncTask;

    .line 640
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->clearCache()V

    .line 641
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 626
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onPause()V

    .line 627
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->imageEditor:Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->onPause()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->editorContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 631
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 609
    invoke-super {p0}, Lcom/vk/attachpicker/simplescreen/BaseScreen;->onResume()V

    .line 610
    iget-boolean v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->shouldPlayOpenAnimation:Z

    if-nez v0, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/vk/attachpicker/screen/EditorScreen;->loadImages()V

    .line 622
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->container:Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/AspectRatioFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/screen/EditorScreen$5;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/screen/EditorScreen$5;-><init>(Lcom/vk/attachpicker/screen/EditorScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public onTopPaddingChanged(I)V
    .locals 2
    .param p1, "topPadding"    # I

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->closeButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 646
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/vk/attachpicker/screen/EditorScreen;->stickersView:Lcom/vk/attachpicker/stickers/EditorStickerView;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/stickers/EditorStickerView;->setTopPadding(I)V

    .line 653
    :cond_0
    return-void
.end method
