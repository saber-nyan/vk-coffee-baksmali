.class public interface abstract Lcom/vkcoffee/android/utils/JSONSerializable;
.super Ljava/lang/Object;
.source "JSONSerializable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/utils/JSONSerializable$Factory;
    }
.end annotation


# static fields
.field public static final CLASS_TYPE_USER_NOTIFICATION:I = 0x1


# virtual methods
.method public abstract getJSONSerializableClassType()I
.end method

.method public abstract getJSONSerializableVersion()I
.end method

.method public abstract serializableToJson(Lorg/json/JSONObject;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
