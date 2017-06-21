.class public Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "TwoWayAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 419
    iput p2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;->position:I

    .line 420
    iput-wide p3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterContextMenuInfo;->id:J

    .line 421
    return-void
.end method
