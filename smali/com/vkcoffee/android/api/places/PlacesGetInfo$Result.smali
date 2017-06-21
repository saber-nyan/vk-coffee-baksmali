.class public Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;
.super Ljava/lang/Object;
.source "PlacesGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/places/PlacesGetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public groupPhoto:Ljava/lang/String;

.field public groupStatus:Ljava/lang/String;

.field public place:Lcom/vkcoffee/android/GeoPlace;

.field public userPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
