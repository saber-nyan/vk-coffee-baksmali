.class public Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ScrollYDelegate;
.super Ljava/lang/Object;
.source "ScrollYDelegate.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;


# static fields
.field public static final SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/ScrollView;

    aput-object v2, v0, v1

    sput-object v0, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ScrollYDelegate;->SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyForPull(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
