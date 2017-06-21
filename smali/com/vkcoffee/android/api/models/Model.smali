.class public abstract Lcom/vkcoffee/android/api/models/Model;
.super Ljava/lang/Object;
.source "Model.java"


# instance fields
.field private mTag:Ljava/lang/Object;

.field private mTags:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Model;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTag(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Model;->mTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Model;->mTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final setTag(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Model;->mTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/Model;->mTags:Landroid/util/SparseArray;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Model;->mTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    iput-object p1, p0, Lcom/vkcoffee/android/api/models/Model;->mTag:Ljava/lang/Object;

    .line 17
    return-void
.end method
