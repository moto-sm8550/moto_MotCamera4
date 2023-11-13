.class public final Ly;
.super Lby$d;
.source "PG"


# static fields
.field public static final c:Ly;

.field private static volatile f:Lds;


# instance fields
.field public a:I

.field public b:I

.field private e:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly;

    invoke-direct {v0}, Ly;-><init>()V

    sput-object v0, Ly;->c:Ly;

    .line 2
    const-class v1, Ly;

    invoke-static {v1, v0}, Lby;->a(Ljava/lang/Class;Lby;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lby$d;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Ly;->e:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Ly;->b:I

    return-void
.end method

.method public static a([BLbp;)Ly;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .line 3
    sget-object v0, Ly;->c:Ly;

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, p0, v2, v1, p1}, Lby;->a(Lby;[BIILbp;)Lby;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lby;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lej;

    invoke-direct {p0}, Lej;-><init>()V

    .line 8
    invoke-virtual {p0}, Lej;->a()Lcm;

    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0

    .line 10
    :cond_1
    :goto_0
    check-cast p0, Ly;

    return-object p0
.end method

.method public static synthetic b()Ly;
    .locals 1

    sget-object v0, Ly;->c:Ly;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 12
    :pswitch_0
    sget-object p0, Ly;->f:Lds;

    if-nez p0, :cond_1

    .line 13
    const-class p1, Ly;

    monitor-enter p1

    .line 14
    :try_start_0
    sget-object p0, Ly;->f:Lds;

    if-nez p0, :cond_0

    .line 15
    new-instance p0, Las;

    sget-object p2, Ly;->c:Ly;

    invoke-direct {p0, p2}, Las;-><init>(Lby;)V

    .line 16
    sput-object p0, Ly;->f:Lds;

    .line 17
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 18
    :pswitch_1
    sget-object p0, Ly;->c:Ly;

    return-object p0

    .line 19
    :pswitch_2
    new-instance p0, Lby$a;

    invoke-direct {p0, v1, v1}, Lby$a;-><init>(BB)V

    return-object p0

    .line 20
    :pswitch_3
    new-instance p0, Ly;

    invoke-direct {p0}, Ly;-><init>()V

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "a"

    aput-object p1, p0, v1

    const-string p1, "b"

    aput-object p1, p0, v0

    const/4 p1, 0x2

    .line 21
    invoke-static {}, Lw;->b()Lcf;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c\u0000"

    .line 22
    sget-object p2, Ly;->c:Ly;

    invoke-static {p2, p1, p0}, Lby;->a(Ldh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    int-to-byte p1, v0

    .line 23
    iput-byte p1, p0, Ly;->e:B

    const/4 p0, 0x0

    return-object p0

    .line 24
    :pswitch_6
    iget-byte p0, p0, Ly;->e:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Lw;
    .locals 0

    .line 1
    iget p0, p0, Ly;->b:I

    invoke-static {p0}, Lw;->a(I)Lw;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lw;->a:Lw;

    :cond_0
    return-object p0
.end method
