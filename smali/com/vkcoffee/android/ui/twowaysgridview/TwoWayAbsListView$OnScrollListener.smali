.class public interface abstract Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$OnScrollListener;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;III)V
.end method

.method public abstract onScrollStateChanged(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;I)V
.end method
