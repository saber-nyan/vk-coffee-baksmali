.class public Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;
.super Ljava/lang/Object;
.source "GiftsGetCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final catalog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final votes:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "votes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "catalog":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/models/GiftCategory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;->votes:I

    .line 51
    iput-object p2, p0, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog$Result;->catalog:Ljava/util/List;

    .line 52
    return-void
.end method
