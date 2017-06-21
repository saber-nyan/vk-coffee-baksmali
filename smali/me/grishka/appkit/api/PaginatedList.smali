.class public abstract Lme/grishka/appkit/api/PaginatedList;
.super Ljava/util/ArrayList;
.source "PaginatedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 12
    .local p0, "this":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract total()I
.end method
