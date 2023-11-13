.class public final Lcom/motorola/camera/analytics/CheckinEvent;
.super Ljava/lang/Object;
.source "CheckinEvent.java"


# static fields
.field public static sConstructorMtd:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static sOk:Z

.field public static sPublishMtd:Ljava/lang/reflect/Method;

.field public static sSetValueArrayListMtd:Ljava/lang/reflect/Method;

.field public static sSetValueBooleanMtd:Ljava/lang/reflect/Method;

.field public static sSetValueDoubleMtd:Ljava/lang/reflect/Method;

.field public static sSetValueIntMtd:Ljava/lang/reflect/Method;

.field public static sSetValueLongMtd:Ljava/lang/reflect/Method;

.field public static sSetValueStringMtd:Ljava/lang/reflect/Method;


# instance fields
.field public final mInstance:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string/jumbo v0, "setValue"

    .line 1
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.motorola.android.provider.CheckinEvent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v1, v4, v2

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v6, 0x2

    aput-object v1, v4, v6

    const/4 v7, 0x3

    .line 2
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sConstructorMtd:Ljava/lang/reflect/Constructor;

    const-string v4, "publish"

    new-array v7, v5, [Ljava/lang/Class;

    .line 3
    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v2

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera/analytics/CheckinEvent;->sPublishMtd:Ljava/lang/reflect/Method;

    const-string v3, "com.motorola.data.event.api.Event"

    .line 4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    aput-object v1, v4, v5

    .line 5
    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueStringMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    .line 6
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueDoubleMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    aput-object v8, v4, v5

    .line 7
    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueLongMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    .line 8
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueIntMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    .line 9
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueBooleanMtd:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v1, v4, v2

    .line 10
    const-class v1, Ljava/util/ArrayList;

    aput-object v1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueArrayListMtd:Ljava/lang/reflect/Method;

    .line 11
    sput-boolean v5, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    sput-boolean v2, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    goto :goto_0

    .line 13
    :catch_1
    sput-boolean v2, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/analytics/UnsupportedException;
        }
    .end annotation

    const-string v0, "MOT_CAMERA_STATS"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v1, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lcom/motorola/camera/analytics/CheckinEvent;->sConstructorMtd:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/analytics/CheckinEvent;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 5
    :catch_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 6
    :catch_2
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 7
    :cond_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final publish(Landroid/content/ContentResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/analytics/UnsupportedException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckinEvent;->mInstance:Ljava/lang/Object;

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/motorola/camera/analytics/CheckinEvent;->sPublishMtd:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 5
    :catch_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0
.end method
