.class public final Lcom/adobe/xmp/impl/XMPDateTimeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/xmp/XMPDateTime;


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public nanoSeconds:I

.field public second:I

.field public timeZone:Ljava/util/TimeZone;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/16 p1, 0xb

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 p1, 0xc

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 p1, 0xe

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const v0, 0xf4240

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    rem-long/2addr v0, v3

    long-to-int p0, v0

    return p0

    :cond_0
    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    invoke-interface {p1}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-long p0, p0

    rem-long/2addr p0, v3

    long-to-int p0, p0

    return p0
.end method

.method public final getCalendar()Ljava/util/Calendar;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    const v1, 0xf4240

    div-int/2addr p0, v1

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public final getDay()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    return p0
.end method

.method public final getHour()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return p0
.end method

.method public final getMinute()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return p0
.end method

.method public final getMonth()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    return p0
.end method

.method public final getNanoSecond()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return p0
.end method

.method public final getSecond()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return p0
.end method

.method public final getTimeZone()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method public final getYear()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return p0
.end method

.method public final setDay(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->day:I

    :goto_1
    return-void
.end method

.method public final setHour(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x17

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->hour:I

    return-void
.end method

.method public final setMinute(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3b

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->minute:I

    return-void
.end method

.method public final setMonth(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    goto :goto_1

    :cond_0
    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->month:I

    :goto_1
    return-void
.end method

.method public final setNanoSecond(I)V
    .locals 0

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->nanoSeconds:I

    return-void
.end method

.method public final setSecond(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3b

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->second:I

    return-void
.end method

.method public final setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->timeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public final setYear(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x270f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;->year:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/R$drawable;->render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
