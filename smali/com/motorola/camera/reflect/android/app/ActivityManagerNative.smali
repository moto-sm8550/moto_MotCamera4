.class public final Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateApi",
        "DiscouragedPrivateApi"
    }
.end annotation


# static fields
.field public static final IS_INITIALIZED:Z

.field public static sMethodGetDefault:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityManagerNative"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2
    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDefault"

    new-array v4, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ActivityManagerNative"

    const-string/jumbo v2, "unable to initialize class"

    .line 4
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 5
    :goto_0
    sput-boolean v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    return-void
.end method
