.class public Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;
.super Ljava/util/ArrayList;
.source "SubPagerOfList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayListWithIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, "this":Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;, "Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfList$ArrayListWithIndex;->index:I

    return-void
.end method
