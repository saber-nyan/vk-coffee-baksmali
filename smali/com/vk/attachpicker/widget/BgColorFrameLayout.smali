.class public Lcom/vk/attachpicker/widget/BgColorFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BgColorFrameLayout.java"


# static fields
.field public static final BACKGROUND_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/vk/attachpicker/widget/BgColorFrameLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/vk/attachpicker/widget/BgColorFrameLayout$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "backgroundColor"

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/widget/BgColorFrameLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->BACKGROUND_COLOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/widget/BgColorFrameLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/widget/BgColorFrameLayout;

    .prologue
    .line 9
    iget v0, p0, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->backgroundColor:I

    return v0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->backgroundColor:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/vk/attachpicker/widget/BgColorFrameLayout;->backgroundColor:I

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 45
    return-void
.end method
