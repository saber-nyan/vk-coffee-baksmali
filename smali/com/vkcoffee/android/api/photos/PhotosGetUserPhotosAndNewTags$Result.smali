.class public Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags$Result;
.super Ljava/lang/Object;
.source "PhotosGetUserPhotosAndNewTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/photos/PhotosGetUserPhotosAndNewTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public newTags:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/TaggedPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public photos:Lcom/vkcoffee/android/data/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public profiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
