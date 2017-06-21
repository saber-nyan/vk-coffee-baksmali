.class public Lcom/vkcoffee/android/utils/JSONSerializable$Factory;
.super Ljava/lang/Object;
.source "JSONSerializable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/JSONSerializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final CLASS_TYPE:Ljava/lang/String; = "__class_type"

.field private static final VERSION:Ljava/lang/String; = "__version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/json/JSONObject;)Lcom/vkcoffee/android/utils/JSONSerializable;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    const-string/jumbo v0, "__class_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 37
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/data/UserNotification;

    const-string/jumbo v1, "__version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/data/UserNotification;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static to(Lcom/vkcoffee/android/utils/JSONSerializable;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "s"    # Lcom/vkcoffee/android/utils/JSONSerializable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v0, "object":Lorg/json/JSONObject;
    const-string/jumbo v1, "__class_type"

    invoke-interface {p0}, Lcom/vkcoffee/android/utils/JSONSerializable;->getJSONSerializableClassType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v1, "__version"

    invoke-interface {p0}, Lcom/vkcoffee/android/utils/JSONSerializable;->getJSONSerializableVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    invoke-interface {p0, v0}, Lcom/vkcoffee/android/utils/JSONSerializable;->serializableToJson(Lorg/json/JSONObject;)V

    .line 47
    return-object v0
.end method
