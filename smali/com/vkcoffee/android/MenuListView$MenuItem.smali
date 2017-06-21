.class Lcom/vkcoffee/android/MenuListView$MenuItem;
.super Ljava/lang/Object;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItem"
.end annotation


# instance fields
.field public icon:I

.field public index:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "_icon"    # I
    .param p2, "_index"    # I
    .param p3, "_title"    # Ljava/lang/String;

    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput p1, p0, Lcom/vkcoffee/android/MenuListView$MenuItem;->icon:I

    .line 932
    iput p2, p0, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    .line 933
    iput-object p3, p0, Lcom/vkcoffee/android/MenuListView$MenuItem;->title:Ljava/lang/String;

    .line 934
    return-void
.end method
