.class public Lbp;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbp$a;
    }
.end annotation


# static fields
.field public static final a:Lbp;

.field private static volatile b:Z = false

.field private static volatile c:Lbp;

.field private static volatile d:Lbp;


# instance fields
.field private final e:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lbp;->d()Ljava/lang/Class;

    .line 2
    new-instance v0, Lbp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbp;-><init>(B)V

    sput-object v0, Lbp;->a:Lbp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbp;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lbp;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lbp;
    .locals 2

    .line 1
    sget-object v0, Lbp;->c:Lbp;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lbp;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lbp;->c:Lbp;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lbn;->a()Lbp;

    move-result-object v0

    sput-object v0, Lbp;->c:Lbp;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static b()Lbp;
    .locals 2

    .line 1
    sget-object v0, Lbp;->d:Lbp;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lbp;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lbp;->d:Lbp;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lbn;->b()Lbp;

    move-result-object v0

    sput-object v0, Lbp;->d:Lbp;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static c()Lbp;
    .locals 1

    const-class v0, Lbp;

    invoke-static {v0}, Lbw;->a(Ljava/lang/Class;)Lbp;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ldh;I)Lbo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "fieldNumber"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lbp;->e:Ljava/util/Map;

    new-instance v0, Lbp$a;

    invoke-direct {v0, p1, p2}, Lbp$a;-><init>(Ljava/lang/Object;I)V

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbo;

    return-object p0
.end method
