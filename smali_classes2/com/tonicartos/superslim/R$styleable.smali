.class public final Lcom/tonicartos/superslim/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/superslim/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final superslim_GridSLM:[I

.field public static final superslim_GridSLM_slm_grid_columnWidth:I = 0x0

.field public static final superslim_GridSLM_slm_grid_numColumns:I = 0x1

.field public static final superslim_LayoutManager:[I

.field public static final superslim_LayoutManager_slm_headerDisplay:I = 0x1

.field public static final superslim_LayoutManager_slm_isHeader:I = 0x0

.field public static final superslim_LayoutManager_slm_section_firstPosition:I = 0x2

.field public static final superslim_LayoutManager_slm_section_headerMarginEnd:I = 0x5

.field public static final superslim_LayoutManager_slm_section_headerMarginStart:I = 0x4

.field public static final superslim_LayoutManager_slm_section_sectionManager:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tonicartos/superslim/R$styleable;->superslim_GridSLM:[I

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x7f0101fb
        0x7f0101fc
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x7f0101fd
        0x7f0101fe
        0x7f0101ff
        0x7f010200
        0x7f010201
        0x7f010202
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
