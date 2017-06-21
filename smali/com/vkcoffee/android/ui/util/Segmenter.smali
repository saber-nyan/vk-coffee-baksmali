.class public interface abstract Lcom/vkcoffee/android/ui/util/Segmenter;
.super Ljava/lang/Object;
.source "Segmenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getFooter()Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getPositionForSegment(I)I
.end method

.method public abstract getSegment(I)Ljava/lang/CharSequence;
.end method

.method public abstract getSegmentForPosition(I)I
.end method

.method public abstract getSegmentIndex(I)I
.end method

.method public abstract getSegmentItemsCount(I)I
.end method

.method public abstract getSegmentsCount()I
.end method

.method public abstract isHeader(I)Z
.end method

.method public abstract onScrollToLastItem()V
.end method
