.class public final Lr$a;
.super Lby;
.source "PG"

# interfaces
.implements Ldj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lr$a;

.field private static volatile f:Lds;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr$a;

    invoke-direct {v0}, Lr$a;-><init>()V

    sput-object v0, Lr$a;->e:Lr$a;

    .line 2
    const-class v1, Lr$a;

    invoke-static {v1, v0}, Lby;->a(Ljava/lang/Class;Lby;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lby;-><init>()V

    return-void
.end method

.method public static g()Lr$a;
    .locals 1

    sget-object v0, Lr$a;->e:Lr$a;

    return-object v0
.end method

.method public static synthetic h()Lr$a;
    .locals 1

    sget-object v0, Lr$a;->e:Lr$a;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    const/4 p0, 0x1

    sub-int/2addr p1, p0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 3
    :pswitch_0
    sget-object p0, Lr$a;->f:Lds;

    if-nez p0, :cond_1

    .line 4
    const-class p1, Lr$a;

    monitor-enter p1

    .line 5
    :try_start_0
    sget-object p0, Lr$a;->f:Lds;

    if-nez p0, :cond_0

    .line 6
    new-instance p0, Las;

    sget-object p2, Lr$a;->e:Lr$a;

    invoke-direct {p0, p2}, Las;-><init>(Lby;)V

    .line 7
    sput-object p0, Lr$a;->f:Lds;

    .line 8
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

    .line 9
    :pswitch_1
    sget-object p0, Lr$a;->e:Lr$a;

    return-object p0

    .line 10
    :pswitch_2
    new-instance p0, Lby$b;

    invoke-direct {p0, p2, p2}, Lby$b;-><init>(BS)V

    return-object p0

    .line 11
    :pswitch_3
    new-instance p0, Lr$a;

    invoke-direct {p0}, Lr$a;-><init>()V

    return-object p0

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "a"

    aput-object v0, p1, p2

    const-string p2, "b"

    aput-object p2, p1, p0

    const/4 p0, 0x2

    const-string p2, "c"

    aput-object p2, p1, p0

    const/4 p0, 0x3

    const-string p2, "d"

    aput-object p2, p1, p0

    const-string p0, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002"

    .line 12
    sget-object p2, Lr$a;->e:Lr$a;

    invoke-static {p2, p0, p1}, Lby;->a(Ldh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    .line 13
    :pswitch_6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

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

.method public final a()Z
    .locals 1

    .line 1
    iget p0, p0, Lr$a;->a:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lr$a;->b:I

    return p0
.end method

.method public final c()Z
    .locals 0

    iget p0, p0, Lr$a;->a:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lr$a;->c:I

    return p0
.end method

.method public final e()Z
    .locals 0

    iget p0, p0, Lr$a;->a:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lr$a;->d:I

    return p0
.end method
