.class Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CascadeDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MergeAdapter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/MergeAdapter;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/MergeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/ui/MergeAdapter;Lcom/vkcoffee/android/ui/MergeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/ui/MergeAdapter;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/MergeAdapter$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/vkcoffee/android/ui/MergeAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/MergeAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MergeAdapter;->notifyDataSetChanged()V

    .line 364
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MergeAdapter$CascadeDataSetObserver;->this$0:Lcom/vkcoffee/android/ui/MergeAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/MergeAdapter;->notifyDataSetInvalidated()V

    .line 369
    return-void
.end method
