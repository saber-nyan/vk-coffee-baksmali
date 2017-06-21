.class public Lcom/vkcoffee/android/api/database/DatabaseGetCities;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "DatabaseGetCities.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/data/database/City;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/vkcoffee/android/api/Callback;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "country"    # I
    .param p2, "q"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string/jumbo v0, "database.getCities"

    const-class v1, Lcom/vkcoffee/android/data/database/City;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 12
    const-string/jumbo v0, "country_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/database/DatabaseGetCities;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    const-string/jumbo v0, "q"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/database/DatabaseGetCities;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 15
    const-string/jumbo v0, "count"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/database/DatabaseGetCities;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_0
    return-void
.end method
