.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitionsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/datamatrix/detector/Detector$1;

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
    .locals 2
    .param p1, "o1"    # Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .param p2, "o2"    # Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .prologue
    .line 436
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 432
    check-cast p1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I

    move-result v0

    return v0
.end method
