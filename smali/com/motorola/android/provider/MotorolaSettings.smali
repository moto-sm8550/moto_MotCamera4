.class public final Lcom/motorola/android/provider/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MotorolaSettings$System;,
        Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;,
        Lcom/motorola/android/provider/MotorolaSettings$Secure;,
        Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;,
        Lcom/motorola/android/provider/MotorolaSettings$Global;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.android.providers.settings"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
